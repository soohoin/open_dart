// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corporation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CorporationResponse _$CorporationResponseFromJson(Map<String, dynamic> json) {
  return CorporationResponse(
    status: json['status'] as String,
    message: json['message'] as String,
    pageNo: json['page_no'] as int,
    pageCount: json['page_count'] as int,
    totalCount: json['total_count'] as int,
    totalPage: json['total_page'] as int,
    list: (json['list'] as List)
        ?.map((e) =>
            e == null ? null : Corporation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CorporationResponseToJson(
        CorporationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'page_no': instance.pageNo,
      'page_count': instance.pageCount,
      'total_count': instance.totalCount,
      'total_page': instance.totalPage,
      'list': instance.list?.map((e) => e?.toJson())?.toList(),
    };
