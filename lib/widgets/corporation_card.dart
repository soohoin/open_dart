import 'package:flutter/material.dart';
import 'package:open_dart/models/corporation.dart';
import 'package:open_dart/widgets/corporation_chip.dart';

class CorporationCard extends StatelessWidget {
  const CorporationCard({Key key, this.corporation}) : super(key: key);

  final dynamic corporation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: Offset(0, 1),
              blurRadius: 4,
              spreadRadius: 2,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'NH투자증권',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                child: CorpClassChip(corpClass: CorpClass.K),
              )
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: <Widget>[
              Text(
                '공시 접수 일자',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  '2020년 01월 17일',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            '[첨부추가]일괄신고추가서류(파생결합증권-주가연계증권)',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
