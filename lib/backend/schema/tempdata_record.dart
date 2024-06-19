import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TempdataRecord extends FirestoreRecord {
  TempdataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "temperature" field.
  int? _temperature;
  int get temperature => _temperature ?? 0;
  bool hasTemperature() => _temperature != null;

  // "gas_value" field.
  int? _gasValue;
  int get gasValue => _gasValue ?? 0;
  bool hasGasValue() => _gasValue != null;

  // "humidity" field.
  int? _humidity;
  int get humidity => _humidity ?? 0;
  bool hasHumidity() => _humidity != null;

  // "water_level" field.
  int? _waterLevel;
  int get waterLevel => _waterLevel ?? 0;
  bool hasWaterLevel() => _waterLevel != null;

  void _initializeFields() {
    _temperature = castToType<int>(snapshotData['temperature']);
    _gasValue = castToType<int>(snapshotData['gas_value']);
    _humidity = castToType<int>(snapshotData['humidity']);
    _waterLevel = castToType<int>(snapshotData['water_level']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tempdata');

  static Stream<TempdataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TempdataRecord.fromSnapshot(s));

  static Future<TempdataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TempdataRecord.fromSnapshot(s));

  static TempdataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TempdataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TempdataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TempdataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TempdataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TempdataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTempdataRecordData({
  int? temperature,
  int? gasValue,
  int? humidity,
  int? waterLevel,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'temperature': temperature,
      'gas_value': gasValue,
      'humidity': humidity,
      'water_level': waterLevel,
    }.withoutNulls,
  );

  return firestoreData;
}

class TempdataRecordDocumentEquality implements Equality<TempdataRecord> {
  const TempdataRecordDocumentEquality();

  @override
  bool equals(TempdataRecord? e1, TempdataRecord? e2) {
    return e1?.temperature == e2?.temperature &&
        e1?.gasValue == e2?.gasValue &&
        e1?.humidity == e2?.humidity &&
        e1?.waterLevel == e2?.waterLevel;
  }

  @override
  int hash(TempdataRecord? e) => const ListEquality()
      .hash([e?.temperature, e?.gasValue, e?.humidity, e?.waterLevel]);

  @override
  bool isValidKey(Object? o) => o is TempdataRecord;
}
