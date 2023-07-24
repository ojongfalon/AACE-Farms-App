// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchTermsStruct extends FFFirebaseStruct {
  SearchTermsStruct({
    String? currentTerm,
    List<String>? searchHistory,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _currentTerm = currentTerm,
        _searchHistory = searchHistory,
        super(firestoreUtilData);

  // "CurrentTerm" field.
  String? _currentTerm;
  String get currentTerm => _currentTerm ?? '';
  set currentTerm(String? val) => _currentTerm = val;
  bool hasCurrentTerm() => _currentTerm != null;

  // "SearchHistory" field.
  List<String>? _searchHistory;
  List<String> get searchHistory => _searchHistory ?? const [];
  set searchHistory(List<String>? val) => _searchHistory = val;
  void updateSearchHistory(Function(List<String>) updateFn) =>
      updateFn(_searchHistory ??= []);
  bool hasSearchHistory() => _searchHistory != null;

  static SearchTermsStruct fromMap(Map<String, dynamic> data) =>
      SearchTermsStruct(
        currentTerm: data['CurrentTerm'] as String?,
        searchHistory: getDataList(data['SearchHistory']),
      );

  static SearchTermsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SearchTermsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'CurrentTerm': _currentTerm,
        'SearchHistory': _searchHistory,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CurrentTerm': serializeParam(
          _currentTerm,
          ParamType.String,
        ),
        'SearchHistory': serializeParam(
          _searchHistory,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static SearchTermsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchTermsStruct(
        currentTerm: deserializeParam(
          data['CurrentTerm'],
          ParamType.String,
          false,
        ),
        searchHistory: deserializeParam<String>(
          data['SearchHistory'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'SearchTermsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SearchTermsStruct &&
        currentTerm == other.currentTerm &&
        listEquality.equals(searchHistory, other.searchHistory);
  }

  @override
  int get hashCode => const ListEquality().hash([currentTerm, searchHistory]);
}

SearchTermsStruct createSearchTermsStruct({
  String? currentTerm,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchTermsStruct(
      currentTerm: currentTerm,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchTermsStruct? updateSearchTermsStruct(
  SearchTermsStruct? searchTerms, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchTerms
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchTermsStructData(
  Map<String, dynamic> firestoreData,
  SearchTermsStruct? searchTerms,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchTerms == null) {
    return;
  }
  if (searchTerms.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && searchTerms.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchTermsData =
      getSearchTermsFirestoreData(searchTerms, forFieldValue);
  final nestedData =
      searchTermsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = searchTerms.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchTermsFirestoreData(
  SearchTermsStruct? searchTerms, [
  bool forFieldValue = false,
]) {
  if (searchTerms == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchTerms.toMap());

  // Add any Firestore field values
  searchTerms.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchTermsListFirestoreData(
  List<SearchTermsStruct>? searchTermss,
) =>
    searchTermss?.map((e) => getSearchTermsFirestoreData(e, true)).toList() ??
    [];
