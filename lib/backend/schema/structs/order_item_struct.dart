// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderItemStruct extends FFFirebaseStruct {
  OrderItemStruct({
    DocumentReference? productId,
    double? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _quantity = quantity,
        super(firestoreUtilData);

  // "productId" field.
  DocumentReference? _productId;
  DocumentReference? get productId => _productId;
  set productId(DocumentReference? val) => _productId = val;
  bool hasProductId() => _productId != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  set quantity(double? val) => _quantity = val;
  void incrementQuantity(double amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  static OrderItemStruct fromMap(Map<String, dynamic> data) => OrderItemStruct(
        productId: data['productId'] as DocumentReference?,
        quantity: castToType<double>(data['quantity']),
      );

  static OrderItemStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OrderItemStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'productId': _productId,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productId': serializeParam(
          _productId,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.double,
        ),
      }.withoutNulls;

  static OrderItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderItemStruct(
        productId: deserializeParam(
          data['productId'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['products'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OrderItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderItemStruct &&
        productId == other.productId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode => const ListEquality().hash([productId, quantity]);
}

OrderItemStruct createOrderItemStruct({
  DocumentReference? productId,
  double? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderItemStruct(
      productId: productId,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderItemStruct? updateOrderItemStruct(
  OrderItemStruct? orderItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderItemStructData(
  Map<String, dynamic> firestoreData,
  OrderItemStruct? orderItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderItem == null) {
    return;
  }
  if (orderItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && orderItem.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderItemData = getOrderItemFirestoreData(orderItem, forFieldValue);
  final nestedData = orderItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = orderItem.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderItemFirestoreData(
  OrderItemStruct? orderItem, [
  bool forFieldValue = false,
]) {
  if (orderItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderItem.toMap());

  // Add any Firestore field values
  orderItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderItemListFirestoreData(
  List<OrderItemStruct>? orderItems,
) =>
    orderItems?.map((e) => getOrderItemFirestoreData(e, true)).toList() ?? [];
