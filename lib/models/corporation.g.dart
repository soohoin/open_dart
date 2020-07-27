// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corporation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Corporation _$CorporationFromJson(Map<String, dynamic> json) {
  return Corporation(
    corpCode: json['corp_code'] as String,
    corpName: json['corp_name'] as String,
    stockCode: json['stock_code'] as String,
    corpCls: _$enumDecodeNullable(_$CorpClassEnumMap, json['corp_cls']),
    reportNm: json['report_nm'] as String,
    rceptNo: json['rcept_no'] as String,
    flrNm: json['flr_nm'] as String,
    rceptDt: json['rcept_dt'] as String,
    rm: json['rm'] as String,
  );
}

Map<String, dynamic> _$CorporationToJson(Corporation instance) =>
    <String, dynamic>{
      'corp_code': instance.corpCode,
      'corp_name': instance.corpName,
      'stock_code': instance.stockCode,
      'corp_cls': _$CorpClassEnumMap[instance.corpCls],
      'report_nm': instance.reportNm,
      'rcept_no': instance.rceptNo,
      'flr_nm': instance.flrNm,
      'rcept_dt': instance.rceptDt,
      'rm': instance.rm,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CorpClassEnumMap = {
  CorpClass.Y: 'Y',
  CorpClass.K: 'K',
  CorpClass.N: 'N',
  CorpClass.E: 'E',
};
