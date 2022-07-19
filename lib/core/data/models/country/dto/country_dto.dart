library country_dto.dart;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/manager/locator/locator.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kt_dart/kt.dart' hide StandardKt;
import 'package:path/path.dart' as p show join;

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';
part 'country_dto.hive.dart';

CountryDTO deserializeCountryDTO(Map<String, dynamic> json) => CountryDTO.fromJson(json);
Map<String, dynamic> serializeCountryDTO(CountryDTO object) => object.toJson();

@unfreezed
class CountryDTO extends HiveObject with _$CountryDTO {
  @HiveType(typeId: 6, adapterName: 'CountryDTOAdapter')
  factory CountryDTO({
    @HiveField(1) String? id,
    @HiveField(2) String? name,
    @HiveField(3) @JsonKey(name: 'isoCode') String? iso,
    @HiveField(4) @JsonKey(name: 'dialCode') String? dialCode,
    @HiveField(5) @JsonKey(name: 'flag') String? flagUrl,
    @HiveField(6) @CurrencyTypeSerializer() CurrencyType? currency,
    @HiveField(7) @JsonKey(name: 'currency_icon') String? currencyIcon,
    @HiveField(8) String? locale,
  }) = _CountryDTO;

  CountryDTO._();

  bool get isNetworkUrl =>
      (flagUrl != null && (flagUrl!.startsWith('http') || flagUrl!.startsWith('https') || flagUrl!.startsWith('data:image')));

  factory CountryDTO.fromDomain(Country? instance) => CountryDTO(
        id: instance?.id?.value,
        iso: instance?.iso.getOrNull,
        name: instance?.name.getOrNull,
        dialCode: instance?.dialCode.getOrNull,
      );

  factory CountryDTO.fromJson(Map<String, dynamic> json) => _$CountryDTOFromJson(json);

  Country get domain => Country(
        id: UniqueId.fromExternal(id),
        iso: BasicTextField(iso?.toLowerCase() ?? '', validate: false),
        name: BasicTextField(name ?? '', validate: false),
        dialCode: BasicTextField(dialCode),
        flag: BasicTextField(flagUrl),
        currencyIcon: BasicTextField(currencyIcon),
        locale: locale,
        type: currency,
      );

  static Future<List<CountryDTO>> _parseJsonToCountryDTO(String data) async {
    final json = jsonDecode(data) as List<dynamic>;
    final countries = json.map((e) => CountryDTO.fromJson((e as Map).mapToStringDynamic)).toList();

    return countries.map((e) => e.copyWith(iso: e.iso?.toLowerCase())).toList();
  }

  static void persistCountries([BuildContext? context]) async {
    final box = HiveClient.countriesBox;
    final ctx = context ?? navigator.navigatorKey.currentContext;

    if (box != null && box.values.isEmpty) {
      String? data;

      try {
        data = await ctx?.let((it) => DefaultAssetBundle.of(it).loadString(AppAssets.countries));
      } catch (_) {
        data = await navigator.navigatorKey.currentContext?.let((it) => DefaultAssetBundle.of(it).loadString(AppAssets.countries));
      }

      if (data != null) {
        final countries = await compute<String, List<CountryDTO>>(_parseJsonToCountryDTO, data);

        unawaited(box.addAll(countries));
      }
    }

    if (box != null && box.isNotEmpty) {
      if (box.isOpen) {
        final countries = box.values;

        final destination = p.join((await Utils.documentsDir).path, Const.countriesDownloadPath);
        final folder = Directory(destination);

        if (!folder.existsSync()) await folder.create(recursive: true);

        for (var e in countries) {
          await e.flagUrl?.let((it) async {
            final filename = it.split('/').last;
            final file = File(p.join(destination, filename));

            final fileExists = await file.exists();

            if (!fileExists && e.isNetworkUrl) {
              await getIt<DownloadManager>().enqueue(it, destination: destination, fileName: filename);
              unawaited(PrecacheManager.networkSVG(it));
            } else if (!fileExists && !e.isNetworkUrl) {
              final newDownloadUrl = p.join(Const.countriesDownloadUrl, filename);
              await getIt<DownloadManager>().enqueue(newDownloadUrl, destination: destination, fileName: filename);
              unawaited(PrecacheManager.networkSVG(newDownloadUrl));
            } else {
              var country = box.values.firstOrNull((o) => o.flagUrl == it);
              if (country != null && country.isInBox) {
                country = country..flagUrl = file.path;
                unawaited(country.save());
              }

              unawaited(PrecacheManager.fileSVG(file));
            }
          });
        }
      }
      return;
    }
  }

  static void registerAdapter() => Hive.registerAdapter(CountryDTOAdapter());
}

CountryDTOList deserializeCountryDTOList(Map<String, dynamic> json) => CountryDTOList.fromJson(json);
Map<String, dynamic> serializeCountryDTOList(CountryDTOList object) => object.toJson();

@freezed
@immutable
class CountryDTOList with _$CountryDTOList {
  const factory CountryDTOList({
    @JsonKey(includeIfNull: false) @Default([]) List<CountryDTO> data,
  }) = _CountryDTOList;

  const CountryDTOList._();

  factory CountryDTOList.fromJson(Map<String, dynamic> json) => _$CountryDTOListFromJson(json);

  KtList<Country> get domain => KtList.from(data.map((e) => e.domain).toList());
}

extension CountryDTOListX on List<CountryDTO> {
  KtList<Country> get domain => KtList.from(map((e) => e.domain).toList());
}
