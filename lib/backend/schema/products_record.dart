import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "ImageUrls" field.
  List<String>? _imageUrls;
  List<String> get imageUrls => _imageUrls ?? const [];
  bool hasImageUrls() => _imageUrls != null;

  // "categories" field.
  List<DocumentReference>? _categories;
  List<DocumentReference> get categories => _categories ?? const [];
  bool hasCategories() => _categories != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "categoryName" field.
  List<String>? _categoryName;
  List<String> get categoryName => _categoryName ?? const [];
  bool hasCategoryName() => _categoryName != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _imageUrls = getDataList(snapshotData['ImageUrls']);
    _categories = getDataList(snapshotData['categories']);
    _unit = snapshotData['unit'] as String?;
    _categoryName = getDataList(snapshotData['categoryName']);
    _tags = getDataList(snapshotData['tags']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  static ProductsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ProductsRecord.getDocumentFromData(
        {
          'name': snapshot.data['name'],
          'description': snapshot.data['description'],
          'price': snapshot.data['price']?.toDouble(),
          'modified_at': safeGet(
            () => DateTime.fromMillisecondsSinceEpoch(
                snapshot.data['modified_at']),
          ),
          'on_sale': snapshot.data['on_sale'],
          'sale_price': snapshot.data['sale_price']?.toDouble(),
          'quantity': snapshot.data['quantity']?.round(),
          'ImageUrls': safeGet(
            () => snapshot.data['ImageUrls'].toList(),
          ),
          'categories': safeGet(
            () => snapshot.data['categories'].map((s) => toRef(s)).toList(),
          ),
          'unit': snapshot.data['unit'],
          'categoryName': safeGet(
            () => snapshot.data['categoryName'].toList(),
          ),
          'tags': safeGet(
            () => snapshot.data['tags'].toList(),
          ),
        },
        ProductsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ProductsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'products',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? unit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'unit': unit,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        listEquality.equals(e1?.imageUrls, e2?.imageUrls) &&
        listEquality.equals(e1?.categories, e2?.categories) &&
        e1?.unit == e2?.unit &&
        listEquality.equals(e1?.categoryName, e2?.categoryName) &&
        listEquality.equals(e1?.tags, e2?.tags);
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.imageUrls,
        e?.categories,
        e?.unit,
        e?.categoryName,
        e?.tags
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
