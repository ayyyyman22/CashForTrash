import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserVocherStorageRecord extends FirestoreRecord {
  UserVocherStorageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "V1" field.
  int? _v1;
  int get v1 => _v1 ?? 0;
  bool hasV1() => _v1 != null;

  // "V2" field.
  int? _v2;
  int get v2 => _v2 ?? 0;
  bool hasV2() => _v2 != null;

  // "V3" field.
  int? _v3;
  int get v3 => _v3 ?? 0;
  bool hasV3() => _v3 != null;

  // "V4" field.
  int? _v4;
  int get v4 => _v4 ?? 0;
  bool hasV4() => _v4 != null;

  void _initializeFields() {
    _uid = snapshotData['Uid'] as String?;
    _v1 = castToType<int>(snapshotData['V1']);
    _v2 = castToType<int>(snapshotData['V2']);
    _v3 = castToType<int>(snapshotData['V3']);
    _v4 = castToType<int>(snapshotData['V4']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User_VocherStorage');

  static Stream<UserVocherStorageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserVocherStorageRecord.fromSnapshot(s));

  static Future<UserVocherStorageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserVocherStorageRecord.fromSnapshot(s));

  static UserVocherStorageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserVocherStorageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserVocherStorageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserVocherStorageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserVocherStorageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserVocherStorageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserVocherStorageRecordData({
  String? uid,
  int? v1,
  int? v2,
  int? v3,
  int? v4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Uid': uid,
      'V1': v1,
      'V2': v2,
      'V3': v3,
      'V4': v4,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserVocherStorageRecordDocumentEquality
    implements Equality<UserVocherStorageRecord> {
  const UserVocherStorageRecordDocumentEquality();

  @override
  bool equals(UserVocherStorageRecord? e1, UserVocherStorageRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.v1 == e2?.v1 &&
        e1?.v2 == e2?.v2 &&
        e1?.v3 == e2?.v3 &&
        e1?.v4 == e2?.v4;
  }

  @override
  int hash(UserVocherStorageRecord? e) =>
      const ListEquality().hash([e?.uid, e?.v1, e?.v2, e?.v3, e?.v4]);

  @override
  bool isValidKey(Object? o) => o is UserVocherStorageRecord;
}
