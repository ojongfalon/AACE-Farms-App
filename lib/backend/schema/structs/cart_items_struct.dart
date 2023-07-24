// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemsStruct extends FFFirebaseStruct {
  CartItemsStruct({
    DocumentReference? product,
    double? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _product = product,
        _quantity = quantity,
        super(firestoreUtilData);

  // "product" field.
  DocumentReference? _product;
  DocumentReference? get product => _product;
  set product(DocumentReference? val) => _product = val;
  bool hasProduct() => _product != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  set quantity(double? val) => _quantity = val;
  void incrementQuantity(double amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  static CartItemsStruct fromMap(Map<String, dynamic> data) => CartItemsStruct(
        product: data['product'] as DocumentReference?,
        quantity: castToType<double>(data['quantity']),
      );

  static CartItemsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CartItemsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'product': _product,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product': serializeParam(
          _product,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.double,
        ),
      }.withoutNulls;

  static CartItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemsStruct(
        product: deserializeParam(
          data['product'],
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
  String toString() => 'CartItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemsStruct &&
        product == other.product &&
        quantity == other.quantity;
  }

  @override
  int get hashCode => const ListEquality().hash([product, quantity]);
}

CartItemsStruct createCartItemsStruct({
  DocumentReference? product,
  double? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartItemsStruct(
      product: product,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartItemsStruct? updateCartItemsStruct(
  CartItemsStruct? cartItems, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartItems
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartItemsStructData(
  Map<String, dynamic> firestoreData,
  CartItemsStruct? cartItems,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartItems == null) {
    return;
  }
  if (cartItems.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && cartItems.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartItemsData = getCartItemsFirestoreData(cartItems, forFieldValue);
  final nestedData = cartItemsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = cartItems.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartItemsFirestoreData(
  CartItemsStruct? cartItems, [
  bool forFieldValue = false,
]) {
  if (cartItems == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartItems.toMap());

  // Add any Firestore field values
  cartItems.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartItemsListFirestoreData(
  List<CartItemsStruct>? cartItemss,
) =>
    cartItemss?.map((e) => getCartItemsFirestoreData(e, true)).toList() ?? [];
