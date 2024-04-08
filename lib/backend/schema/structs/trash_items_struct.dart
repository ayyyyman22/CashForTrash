// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrashItemsStruct extends FFFirebaseStruct {
  TrashItemsStruct({
    String? description,
    String? imageURL,
    int? pointsPerItem,
    String? trashName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _description = description,
        _imageURL = imageURL,
        _pointsPerItem = pointsPerItem,
        _trashName = trashName,
        super(firestoreUtilData);

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  set imageURL(String? val) => _imageURL = val;
  bool hasImageURL() => _imageURL != null;

  // "pointsPerItem" field.
  int? _pointsPerItem;
  int get pointsPerItem => _pointsPerItem ?? 10;
  set pointsPerItem(int? val) => _pointsPerItem = val;
  void incrementPointsPerItem(int amount) =>
      _pointsPerItem = pointsPerItem + amount;
  bool hasPointsPerItem() => _pointsPerItem != null;

  // "trashName" field.
  String? _trashName;
  String get trashName => _trashName ?? '';
  set trashName(String? val) => _trashName = val;
  bool hasTrashName() => _trashName != null;

  static TrashItemsStruct fromMap(Map<String, dynamic> data) =>
      TrashItemsStruct(
        description: data['description'] as String?,
        imageURL: data['imageURL'] as String?,
        pointsPerItem: castToType<int>(data['pointsPerItem']),
        trashName: data['trashName'] as String?,
      );

  static TrashItemsStruct? maybeFromMap(dynamic data) => data is Map
      ? TrashItemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'imageURL': _imageURL,
        'pointsPerItem': _pointsPerItem,
        'trashName': _trashName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'imageURL': serializeParam(
          _imageURL,
          ParamType.String,
        ),
        'pointsPerItem': serializeParam(
          _pointsPerItem,
          ParamType.int,
        ),
        'trashName': serializeParam(
          _trashName,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrashItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrashItemsStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        imageURL: deserializeParam(
          data['imageURL'],
          ParamType.String,
          false,
        ),
        pointsPerItem: deserializeParam(
          data['pointsPerItem'],
          ParamType.int,
          false,
        ),
        trashName: deserializeParam(
          data['trashName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrashItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrashItemsStruct &&
        description == other.description &&
        imageURL == other.imageURL &&
        pointsPerItem == other.pointsPerItem &&
        trashName == other.trashName;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([description, imageURL, pointsPerItem, trashName]);
}

TrashItemsStruct createTrashItemsStruct({
  String? description,
  String? imageURL,
  int? pointsPerItem,
  String? trashName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrashItemsStruct(
      description: description,
      imageURL: imageURL,
      pointsPerItem: pointsPerItem,
      trashName: trashName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrashItemsStruct? updateTrashItemsStruct(
  TrashItemsStruct? trashItems, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trashItems
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrashItemsStructData(
  Map<String, dynamic> firestoreData,
  TrashItemsStruct? trashItems,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trashItems == null) {
    return;
  }
  if (trashItems.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && trashItems.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trashItemsData = getTrashItemsFirestoreData(trashItems, forFieldValue);
  final nestedData = trashItemsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = trashItems.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrashItemsFirestoreData(
  TrashItemsStruct? trashItems, [
  bool forFieldValue = false,
]) {
  if (trashItems == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trashItems.toMap());

  // Add any Firestore field values
  trashItems.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrashItemsListFirestoreData(
  List<TrashItemsStruct>? trashItemss,
) =>
    trashItemss?.map((e) => getTrashItemsFirestoreData(e, true)).toList() ?? [];
