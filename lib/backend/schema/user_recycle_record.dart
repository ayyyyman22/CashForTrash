import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UserRecycleRecord extends FirestoreRecord {
  UserRecycleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserRecycle');

  static Stream<UserRecycleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecycleRecord.fromSnapshot(s));

  static Future<UserRecycleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecycleRecord.fromSnapshot(s));

  static UserRecycleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserRecycleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecycleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecycleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecycleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecycleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecycleRecordData({
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecycleRecordDocumentEquality implements Equality<UserRecycleRecord> {
  const UserRecycleRecordDocumentEquality();

  @override
  bool equals(UserRecycleRecord? e1, UserRecycleRecord? e2) {
    return e1?.uid == e2?.uid;
  }

  @override
  int hash(UserRecycleRecord? e) => const ListEquality().hash([e?.uid]);

  @override
  bool isValidKey(Object? o) => o is UserRecycleRecord;
}
