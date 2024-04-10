import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RedeemHistoryRecord extends FirestoreRecord {
  RedeemHistoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Voucher_id" field.
  int? _voucherId;
  int get voucherId => _voucherId ?? 0;
  bool hasVoucherId() => _voucherId != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "creat_time" field.
  DateTime? _creatTime;
  DateTime? get creatTime => _creatTime;
  bool hasCreatTime() => _creatTime != null;

  // "Point_required" field.
  double? _pointRequired;
  double get pointRequired => _pointRequired ?? 0.0;
  bool hasPointRequired() => _pointRequired != null;

  // "VocherName" field.
  String? _vocherName;
  String get vocherName => _vocherName ?? '';
  bool hasVocherName() => _vocherName != null;

  // "VoucherCode" field.
  String? _voucherCode;
  String get voucherCode => _voucherCode ?? '';
  bool hasVoucherCode() => _voucherCode != null;

  void _initializeFields() {
    _voucherId = castToType<int>(snapshotData['Voucher_id']);
    _uid = snapshotData['uid'] as String?;
    _creatTime = snapshotData['creat_time'] as DateTime?;
    _pointRequired = castToType<double>(snapshotData['Point_required']);
    _vocherName = snapshotData['VocherName'] as String?;
    _voucherCode = snapshotData['VoucherCode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RedeemHistory');

  static Stream<RedeemHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RedeemHistoryRecord.fromSnapshot(s));

  static Future<RedeemHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RedeemHistoryRecord.fromSnapshot(s));

  static RedeemHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RedeemHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RedeemHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RedeemHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RedeemHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RedeemHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRedeemHistoryRecordData({
  int? voucherId,
  String? uid,
  DateTime? creatTime,
  double? pointRequired,
  String? vocherName,
  String? voucherCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Voucher_id': voucherId,
      'uid': uid,
      'creat_time': creatTime,
      'Point_required': pointRequired,
      'VocherName': vocherName,
      'VoucherCode': voucherCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class RedeemHistoryRecordDocumentEquality
    implements Equality<RedeemHistoryRecord> {
  const RedeemHistoryRecordDocumentEquality();

  @override
  bool equals(RedeemHistoryRecord? e1, RedeemHistoryRecord? e2) {
    return e1?.voucherId == e2?.voucherId &&
        e1?.uid == e2?.uid &&
        e1?.creatTime == e2?.creatTime &&
        e1?.pointRequired == e2?.pointRequired &&
        e1?.vocherName == e2?.vocherName &&
        e1?.voucherCode == e2?.voucherCode;
  }

  @override
  int hash(RedeemHistoryRecord? e) => const ListEquality().hash([
        e?.voucherId,
        e?.uid,
        e?.creatTime,
        e?.pointRequired,
        e?.vocherName,
        e?.voucherCode
      ]);

  @override
  bool isValidKey(Object? o) => o is RedeemHistoryRecord;
}
