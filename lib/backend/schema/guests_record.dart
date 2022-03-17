import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'guests_record.g.dart';

abstract class GuestsRecord
    implements Built<GuestsRecord, GuestsRecordBuilder> {
  static Serializer<GuestsRecord> get serializer => _$guestsRecordSerializer;

  @nullable
  String get guestName;

  @nullable
  bool get rsvp;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  bool get admin;

  @nullable
  bool get profileComplete;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GuestsRecordBuilder builder) => builder
    ..guestName = ''
    ..rsvp = false
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..admin = false
    ..profileComplete = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guests');

  static Stream<GuestsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<GuestsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  GuestsRecord._();
  factory GuestsRecord([void Function(GuestsRecordBuilder) updates]) =
      _$GuestsRecord;

  static GuestsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGuestsRecordData({
  String guestName,
  bool rsvp,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  bool admin,
  bool profileComplete,
}) =>
    serializers.toFirestore(
        GuestsRecord.serializer,
        GuestsRecord((g) => g
          ..guestName = guestName
          ..rsvp = rsvp
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..admin = admin
          ..profileComplete = profileComplete));
