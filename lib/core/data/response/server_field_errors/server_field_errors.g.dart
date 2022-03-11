// GENERATED CODE - DO NOT MODIFY BY HAND

part of server_field_errors.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerFieldErrors _$$_ServerFieldErrorsFromJson(Map<String, dynamic> json) =>
    _$_ServerFieldErrors(
      name: (json['Name'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      firstName: (json['first_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lastName: (json['last_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      token:
          (json['Token'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      email:
          (json['Email'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      gender:
          (json['Gender'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      age: (json['Age'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      phone:
          (json['Phone'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      password: (json['Password'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      oldPassword: (json['current_password'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      code: (json['Code'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      type: (json['Type'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      description: (json['Description'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      document: (json['Document'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      duration: (json['Duration'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      amount:
          (json['Amount'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      currencyId: (json['currency_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      country: (json['Country'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      comment: (json['Comment'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      accountNumber: (json['account_number'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      bankId: (json['bank_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      recipient: (json['Recipient'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      plan: (json['Plan'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      paymentMethod: (json['payment_method'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      lat: (json['Lat'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      long: (json['Long'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      zip: (json['Zip'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      instructions: (json['Instructions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      countryId: (json['country_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      alias:
          (json['Alias'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      apartment: (json['Apartment'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      street:
          (json['Street'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      town: (json['Town'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      city: (json['City'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      stateId: (json['state_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      state:
          (json['State'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      landmark: (json['Landmark'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      cardId: (json['card_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      cardNumber: (json['card_number'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      cardName: (json['card_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      pickupLat: (json['pickup_lat'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      destLat: (json['destination_lat'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      receiverName: (json['receiver_full_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      receiverPhone: (json['receiver_phone_number'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      itemName: (json['item_name'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      quantity: (json['Quantity'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      images:
          (json['Images'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      unitPrice: (json['unit_price'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      requiredDate: (json['required_date'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      supportMessage: (json['message'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_ServerFieldErrorsToJson(
    _$_ServerFieldErrors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Name', instance.name);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('Token', instance.token);
  writeNotNull('Email', instance.email);
  writeNotNull('Gender', instance.gender);
  writeNotNull('Age', instance.age);
  writeNotNull('Phone', instance.phone);
  writeNotNull('Password', instance.password);
  writeNotNull('current_password', instance.oldPassword);
  writeNotNull('Code', instance.code);
  writeNotNull('Type', instance.type);
  writeNotNull('Description', instance.description);
  writeNotNull('Document', instance.document);
  writeNotNull('Duration', instance.duration);
  writeNotNull('Amount', instance.amount);
  writeNotNull('currency_id', instance.currencyId);
  writeNotNull('Country', instance.country);
  writeNotNull('Comment', instance.comment);
  writeNotNull('account_number', instance.accountNumber);
  writeNotNull('bank_id', instance.bankId);
  writeNotNull('Recipient', instance.recipient);
  writeNotNull('Plan', instance.plan);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('Lat', instance.lat);
  writeNotNull('Long', instance.long);
  writeNotNull('Zip', instance.zip);
  writeNotNull('Instructions', instance.instructions);
  writeNotNull('country_id', instance.countryId);
  writeNotNull('Alias', instance.alias);
  writeNotNull('Apartment', instance.apartment);
  writeNotNull('Street', instance.street);
  writeNotNull('Town', instance.town);
  writeNotNull('City', instance.city);
  writeNotNull('state_id', instance.stateId);
  writeNotNull('State', instance.state);
  writeNotNull('Landmark', instance.landmark);
  writeNotNull('card_id', instance.cardId);
  writeNotNull('card_number', instance.cardNumber);
  writeNotNull('card_name', instance.cardName);
  writeNotNull('pickup_lat', instance.pickupLat);
  writeNotNull('destination_lat', instance.destLat);
  writeNotNull('receiver_full_name', instance.receiverName);
  writeNotNull('receiver_phone_number', instance.receiverPhone);
  writeNotNull('item_name', instance.itemName);
  writeNotNull('Quantity', instance.quantity);
  writeNotNull('Images', instance.images);
  writeNotNull('unit_price', instance.unitPrice);
  writeNotNull('required_date', instance.requiredDate);
  writeNotNull('message', instance.supportMessage);
  return val;
}
