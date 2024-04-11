import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class StaffaccountsRecord extends FirestoreRecord {
  StaffaccountsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "staffemail" field.
  String? _staffemail;
  String get staffemail => _staffemail ?? '';
  bool hasStaffemail() => _staffemail != null;

  // "staffpassword" field.
  String? _staffpassword;
  String get staffpassword => _staffpassword ?? '';
  bool hasStaffpassword() => _staffpassword != null;

  void _initializeFields() {
    _staffemail = snapshotData['staffemail'] as String?;
    _staffpassword = snapshotData['staffpassword'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Staffaccounts');

  static Stream<StaffaccountsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StaffaccountsRecord.fromSnapshot(s));

  static Future<StaffaccountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StaffaccountsRecord.fromSnapshot(s));

  static StaffaccountsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StaffaccountsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StaffaccountsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StaffaccountsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StaffaccountsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StaffaccountsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStaffaccountsRecordData({
  String? staffemail,
  String? staffpassword,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'staffemail': staffemail,
      'staffpassword': staffpassword,
    }.withoutNulls,
  );

  return firestoreData;
}

class StaffaccountsRecordDocumentEquality
    implements Equality<StaffaccountsRecord> {
  const StaffaccountsRecordDocumentEquality();

  @override
  bool equals(StaffaccountsRecord? e1, StaffaccountsRecord? e2) {
    return e1?.staffemail == e2?.staffemail &&
        e1?.staffpassword == e2?.staffpassword;
  }

  @override
  int hash(StaffaccountsRecord? e) =>
      const ListEquality().hash([e?.staffemail, e?.staffpassword]);

  @override
  bool isValidKey(Object? o) => o is StaffaccountsRecord;
}
