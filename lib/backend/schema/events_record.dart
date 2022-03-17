import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

  @nullable
  String get eventName;

  @nullable
  DateTime get eventTime;

  @nullable
  String get eventLocation;

  @nullable
  String get eventDescription;

  @nullable
  String get eventPhoto;

  @nullable
  String get eventLocationName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..eventName = ''
    ..eventLocation = ''
    ..eventDescription = ''
    ..eventPhoto = ''
    ..eventLocationName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;

  static EventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEventsRecordData({
  String eventName,
  DateTime eventTime,
  String eventLocation,
  String eventDescription,
  String eventPhoto,
  String eventLocationName,
}) =>
    serializers.toFirestore(
        EventsRecord.serializer,
        EventsRecord((e) => e
          ..eventName = eventName
          ..eventTime = eventTime
          ..eventLocation = eventLocation
          ..eventDescription = eventDescription
          ..eventPhoto = eventPhoto
          ..eventLocationName = eventLocationName));
