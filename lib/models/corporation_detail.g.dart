// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corporation_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CorporationDetail _$CorporationDetailFromJson(Map<String, dynamic> json) {
  return CorporationDetail(
    status: json['status'] as String,
    message: json['message'] as String,
    corpCode: json['corp_code'] as String,
    corpName: json['corp_name'] as String,
    corpNameEng: json['corp_name_eng'] as String,
    stockName: json['stock_name'] as String,
    stockCode: json['stock_code'] as String,
    ceoNm: json['ceo_nm'] as String,
    corpCls: json['corp_cls'] as String,
    jurirNo: json['jurir_no'] as String,
    bizrNo: json['bizr_no'] as String,
    adres: json['adres'] as String,
    hmUrl: json['hm_url'] as String,
    irUrl: json['ir_url'] as String,
    phnNo: json['phn_no'] as String,
    faxNo: json['fax_no'] as String,
    indutyCode: json['induty_code'] as String,
    estDt: json['est_dt'] as String,
    accMt: json['acc_mt'] as String,
  );
}

Map<String, dynamic> _$CorporationDetailToJson(CorporationDetail instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'corp_code': instance.corpCode,
      'corp_name': instance.corpName,
      'corp_name_eng': instance.corpNameEng,
      'stock_name': instance.stockName,
      'stock_code': instance.stockCode,
      'ceo_nm': instance.ceoNm,
      'corp_cls': instance.corpCls,
      'jurir_no': instance.jurirNo,
      'bizr_no': instance.bizrNo,
      'adres': instance.adres,
      'hm_url': instance.hmUrl,
      'ir_url': instance.irUrl,
      'phn_no': instance.phnNo,
      'fax_no': instance.faxNo,
      'induty_code': instance.indutyCode,
      'est_dt': instance.estDt,
      'acc_mt': instance.accMt,
    };
