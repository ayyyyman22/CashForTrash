import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecycleHistoryRecord extends FirestoreRecord {
  RecycleHistoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "clothing" field.
  double? _clothing;
  double get clothing => _clothing ?? 0.0;
  bool hasClothing() => _clothing != null;

  // "date_time" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "metal" field.
  double? _metal;
  double get metal => _metal ?? 0.0;
  bool hasMetal() => _metal != null;

  // "paper" field.
  double? _paper;
  double get paper => _paper ?? 0.0;
  bool hasPaper() => _paper != null;

  // "plastic" field.
  double? _plastic;
  double get plastic => _plastic ?? 0.0;
  bool hasPlastic() => _plastic != null;

  // "points" field.
  double? _points;
  double get points => _points ?? 0.0;
  bool hasPoints() => _points != null;

  // "recycleID" field.
  String? _recycleID;
  String get recycleID => _recycleID ?? '';
  bool hasRecycleID() => _recycleID != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _clothing = castToType<double>(snapshotData['clothing']);
    _dateTime = snapshotData['date_time'] as DateTime?;
    _metal = castToType<double>(snapshotData['metal']);
    _paper = castToType<double>(snapshotData['paper']);
    _plastic = castToType<double>(snapshotData['plastic']);
    _points = castToType<double>(snapshotData['points']);
    _recycleID = snapshotData['recycleID'] as String?;
    _status = snapshotData['status'] as bool?;
    _userID = snapshotData['userID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RecycleHistory');

  static Stream<RecycleHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecycleHistoryRecord.fromSnapshot(s));

  static Future<RecycleHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecycleHistoryRecord.fromSnapshot(s));

  static RecycleHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecycleHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecycleHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecycleHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecycleHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecycleHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecycleHistoryRecordData({
  double? clothing,
  DateTime? dateTime,
  double? metal,
  double? paper,
  double? plastic,
  double? points,
  String? recycleID,
  bool? status,
  String? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clothing': clothing,
      'date_time': dateTime,
      'metal': metal,
      'paper': paper,
      'plastic': plastic,
      'points': points,
      'recycleID': recycleID,
      'status': status,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecycleHistoryRecordDocumentEquality
    implements Equality<RecycleHistoryRecord> {
  const RecycleHistoryRecordDocumentEquality();

  @override
  bool equals(RecycleHistoryRecord? e1, RecycleHistoryRecord? e2) {
    return e1?.clothing == e2?.clothing &&
        e1?.dateTime == e2?.dateTime &&
        e1?.metal == e2?.metal &&
        e1?.paper == e2?.paper &&
        e1?.plastic == e2?.plastic &&
        e1?.points == e2?.points &&
        e1?.recycleID == e2?.recycleID &&
        e1?.status == e2?.status &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(RecycleHistoryRecord? e) => const ListEquality().hash([
        e?.clothing,
        e?.dateTime,
        e?.metal,
        e?.paper,
        e?.plastic,
        e?.points,
        e?.recycleID,
        e?.status,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is RecycleHistoryRecord;
}
