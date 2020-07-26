import 'package:flutter/material.dart';
import 'package:open_dart/widgets/corporation_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        physics: AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        itemBuilder: (context, index) {
          return CorporationCard();
        },
        itemCount: 10,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16);
        },
      ),
    );
  }
}
