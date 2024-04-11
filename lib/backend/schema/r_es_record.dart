import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class REsRecord extends FirestoreRecord {
  REsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "crs1" field.
  double? _crs1;
  double get crs1 => _crs1 ?? 0.0;
  bool hasCrs1() => _crs1 != null;

  // "crs2" field.
  double? _crs2;
  double get crs2 => _crs2 ?? 0.0;
  bool hasCrs2() => _crs2 != null;

  // "crs" field.
  LatLng? _crs;
  LatLng? get crs => _crs;
  bool hasCrs() => _crs != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _crs1 = castToType<double>(snapshotData['crs1']);
    _crs2 = castToType<double>(snapshotData['crs2']);
    _crs = snapshotData['crs'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('REs');

  static Stream<REsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => REsRecord.fromSnapshot(s));

  static Future<REsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => REsRecord.fromSnapshot(s));

  static REsRecord fromSnapshot(DocumentSnapshot snapshot) => REsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static REsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      REsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'REsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is REsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createREsRecordData({
  String? name,
  double? crs1,
  double? crs2,
  LatLng? crs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'crs1': crs1,
      'crs2': crs2,
      'crs': crs,
    }.withoutNulls,
  );

  return firestoreData;
}

class REsRecordDocumentEquality implements Equality<REsRecord> {
  const REsRecordDocumentEquality();

  @override
  bool equals(REsRecord? e1, REsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.crs1 == e2?.crs1 &&
        e1?.crs2 == e2?.crs2 &&
        e1?.crs == e2?.crs;
  }

  @override
  int hash(REsRecord? e) =>
      const ListEquality().hash([e?.name, e?.crs1, e?.crs2, e?.crs]);

  @override
  bool isValidKey(Object? o) => o is REsRecord;
}
