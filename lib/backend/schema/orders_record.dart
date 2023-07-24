import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "items" field.
  List<OrderItemStruct>? _items;
  List<OrderItemStruct> get items => _items ?? const [];
  bool hasItems() => _items != null;

  // "orderDate" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "pickupMethod" field.
  String? _pickupMethod;
  String get pickupMethod => _pickupMethod ?? '';
  bool hasPickupMethod() => _pickupMethod != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "totalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  bool hasTotalAmount() => _totalAmount != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "deliveryDate" field.
  DateTime? _deliveryDate;
  DateTime? get deliveryDate => _deliveryDate;
  bool hasDeliveryDate() => _deliveryDate != null;

  void _initializeFields() {
    _items = getStructList(
      snapshotData['items'],
      OrderItemStruct.fromMap,
    );
    _orderDate = snapshotData['orderDate'] as DateTime?;
    _paymentMethod = snapshotData['paymentMethod'] as String?;
    _pickupMethod = snapshotData['pickupMethod'] as String?;
    _status = snapshotData['status'] as String?;
    _totalAmount = castToType<double>(snapshotData['totalAmount']);
    _userId = snapshotData['userId'] as DocumentReference?;
    _deliveryDate = snapshotData['deliveryDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DateTime? orderDate,
  String? paymentMethod,
  String? pickupMethod,
  String? status,
  double? totalAmount,
  DocumentReference? userId,
  DateTime? deliveryDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderDate': orderDate,
      'paymentMethod': paymentMethod,
      'pickupMethod': pickupMethod,
      'status': status,
      'totalAmount': totalAmount,
      'userId': userId,
      'deliveryDate': deliveryDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.items, e2?.items) &&
        e1?.orderDate == e2?.orderDate &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.pickupMethod == e2?.pickupMethod &&
        e1?.status == e2?.status &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.userId == e2?.userId &&
        e1?.deliveryDate == e2?.deliveryDate;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.items,
        e?.orderDate,
        e?.paymentMethod,
        e?.pickupMethod,
        e?.status,
        e?.totalAmount,
        e?.userId,
        e?.deliveryDate
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
