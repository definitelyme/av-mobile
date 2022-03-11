library item_condition.entity.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_condition.entity.g.dart';

class ItemCondition extends EnumClass {
  static const ItemCondition good = _$good;
  @BuiltValueEnumConst(fallback: true)
  static const ItemCondition poor = _$poor;
  static const ItemCondition damaged = _$damaged;

  const ItemCondition._(String name) : super(name);

  static BuiltSet<ItemCondition> get values => _$values;

  static ItemCondition valueOf(String name) => _$valueOf(name);
}

class ItemConditionSerializer
    implements JsonConverter<ItemCondition?, String?> {
  const ItemConditionSerializer();

  @override
  ItemCondition fromJson(String? value) => ItemCondition.valueOf(value ?? '');

  @override
  String? toJson(ItemCondition? instance) => '${instance?.name}';
}
