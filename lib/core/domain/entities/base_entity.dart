library base_data_model.dart;

import 'package:auctionvillage/core/domain/entities/unique_id.dart';

abstract class BaseEntity {
  const BaseEntity();

  UniqueId<String?> get id;
  DateTime? get createdAt;
  DateTime? get updatedAt;
}
