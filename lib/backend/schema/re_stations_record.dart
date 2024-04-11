import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReStationsRecord extends FirestoreRecord {
  ReStationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "crslat" field.
  double? _crslat;
  double get crslat => _crslat ?? 0.0;
  bool hasCrslat() => _crslat != null;

  // "crslng" field.
  double? _crslng;
  double get crslng => _crslng ?? 0.0;
  bool hasCrslng() => _crslng != null;

  // "crs" field.
  LatLng? _crs;
  LatLng? get crs => _crs;
  bool hasCrs() => _crs != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _crslat = castToType<double>(snapshotData['crslat']);
    _crslng = castToType<double>(snapshotData['crslng']);
    _crs = snapshotData['crs'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ReStations');

  static Stream<ReStationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReStationsRecord.fromSnapshot(s));

  static Future<ReStationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReStationsRecord.fromSnapshot(s));

  static ReStationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReStationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReStationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReStationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReStationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReStationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReStationsRecordData({
  String? name,
  double? crslat,
  double? crslng,
  LatLng? crs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'crslat': crslat,
      'crslng': crslng,
      'crs': crs,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReStationsRecordDocumentEquality implements Equality<ReStationsRecord> {
  const ReStationsRecordDocumentEquality();

  @override
  bool equals(ReStationsRecord? e1, ReStationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.crslat == e2?.crslat &&
        e1?.crslng == e2?.crslng &&
        e1?.crs == e2?.crs;
  }

  @override
  int hash(ReStationsRecord? e) =>
      const ListEquality().hash([e?.name, e?.crslat, e?.crslng, e?.crs]);

  @override
  bool isValidKey(Object? o) => o is ReStationsRecord;
}
