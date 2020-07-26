import 'package:json_annotation/json_annotation.dart';
import 'package:open_dart/models/models.dart';

part 'corporation_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class CorporationResponse {
  CorporationResponse({
    this.status,
    this.message,
    this.pageNo,
    this.pageCount,
    this.totalCount,
    this.totalPage,
    this.list,
  });

  final String status;
  final String message;
  final int pageNo;
  final int pageCount;
  final int totalCount;
  final int totalPage;
  final List<Corporation> list;
  factory CorporationResponse.fromJson(Map<String, dynamic> json) =>
      _$CorporationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CorporationResponseToJson(this);
}
