import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PointBalanceDataRecord extends FirestoreRecord {
  PointBalanceDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "PointBalance" field.
  double? _pointBalance;
  double get pointBalance => _pointBalance ?? 0.0;
  bool hasPointBalance() => _pointBalance != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _pointBalance = castToType<double>(snapshotData['PointBalance']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PointBalanceData');

  static Stream<PointBalanceDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PointBalanceDataRecord.fromSnapshot(s));

  static Future<PointBalanceDataRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PointBalanceDataRecord.fromSnapshot(s));

  static PointBalanceDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PointBalanceDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PointBalanceDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PointBalanceDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PointBalanceDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PointBalanceDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPointBalanceDataRecordData({
  String? uid,
  double? pointBalance,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'PointBalance': pointBalance,
    }.withoutNulls,
  );

  return firestoreData;
}

class PointBalanceDataRecordDocumentEquality
    implements Equality<PointBalanceDataRecord> {
  const PointBalanceDataRecordDocumentEquality();

  @override
  bool equals(PointBalanceDataRecord? e1, PointBalanceDataRecord? e2) {
    return e1?.uid == e2?.uid && e1?.pointBalance == e2?.pointBalance;
  }

  @override
  int hash(PointBalanceDataRecord? e) =>
      const ListEquality().hash([e?.uid, e?.pointBalance]);

  @override
  bool isValidKey(Object? o) => o is PointBalanceDataRecord;
}
