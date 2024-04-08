import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecyclingStationsRecord extends FirestoreRecord {
  RecyclingStationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "operatingHours" field.
  String? _operatingHours;
  String get operatingHours => _operatingHours ?? '';
  bool hasOperatingHours() => _operatingHours != null;

  // "contactInfo" field.
  String? _contactInfo;
  String get contactInfo => _contactInfo ?? '';
  bool hasContactInfo() => _contactInfo != null;

  // "acceptedItems" field.
  List<String>? _acceptedItems;
  List<String> get acceptedItems => _acceptedItems ?? const [];
  bool hasAcceptedItems() => _acceptedItems != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _address = snapshotData['address'] as String?;
    _operatingHours = snapshotData['operatingHours'] as String?;
    _contactInfo = snapshotData['contactInfo'] as String?;
    _acceptedItems = getDataList(snapshotData['acceptedItems']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RecyclingStations');

  static Stream<RecyclingStationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecyclingStationsRecord.fromSnapshot(s));

  static Future<RecyclingStationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecyclingStationsRecord.fromSnapshot(s));

  static RecyclingStationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecyclingStationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecyclingStationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecyclingStationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecyclingStationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecyclingStationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecyclingStationsRecordData({
  String? name,
  LatLng? location,
  String? address,
  String? operatingHours,
  String? contactInfo,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'address': address,
      'operatingHours': operatingHours,
      'contactInfo': contactInfo,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecyclingStationsRecordDocumentEquality
    implements Equality<RecyclingStationsRecord> {
  const RecyclingStationsRecordDocumentEquality();

  @override
  bool equals(RecyclingStationsRecord? e1, RecyclingStationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.address == e2?.address &&
        e1?.operatingHours == e2?.operatingHours &&
        e1?.contactInfo == e2?.contactInfo &&
        listEquality.equals(e1?.acceptedItems, e2?.acceptedItems) &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(RecyclingStationsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.location,
        e?.address,
        e?.operatingHours,
        e?.contactInfo,
        e?.acceptedItems,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is RecyclingStationsRecord;
}
