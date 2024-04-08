import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VocherRecord extends FirestoreRecord {
  VocherRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Vocher_id" field.
  int? _vocherId;
  int get vocherId => _vocherId ?? 0;
  bool hasVocherId() => _vocherId != null;

  // "Value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "Point_required" field.
  double? _pointRequired;
  double get pointRequired => _pointRequired ?? 0.0;
  bool hasPointRequired() => _pointRequired != null;

  void _initializeFields() {
    _vocherId = castToType<int>(snapshotData['Vocher_id']);
    _value = castToType<double>(snapshotData['Value']);
    _pointRequired = castToType<double>(snapshotData['Point_required']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vocher');

  static Stream<VocherRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VocherRecord.fromSnapshot(s));

  static Future<VocherRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VocherRecord.fromSnapshot(s));

  static VocherRecord fromSnapshot(DocumentSnapshot snapshot) => VocherRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VocherRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VocherRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VocherRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VocherRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVocherRecordData({
  int? vocherId,
  double? value,
  double? pointRequired,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Vocher_id': vocherId,
      'Value': value,
      'Point_required': pointRequired,
    }.withoutNulls,
  );

  return firestoreData;
}

class VocherRecordDocumentEquality implements Equality<VocherRecord> {
  const VocherRecordDocumentEquality();

  @override
  bool equals(VocherRecord? e1, VocherRecord? e2) {
    return e1?.vocherId == e2?.vocherId &&
        e1?.value == e2?.value &&
        e1?.pointRequired == e2?.pointRequired;
  }

  @override
  int hash(VocherRecord? e) =>
      const ListEquality().hash([e?.vocherId, e?.value, e?.pointRequired]);

  @override
  bool isValidKey(Object? o) => o is VocherRecord;
}
