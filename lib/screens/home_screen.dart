import 'package:flutter/material.dart';
import 'package:open_dart/models/corporation_response.dart';
import 'package:open_dart/services/dart_open_api_service.dart';
import 'package:open_dart/widgets/corporation_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder<CorporationResponse>(
        future: DartOpenApiService().searchCorporations(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            CorporationResponse res = snapshot.data;
            return ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              itemBuilder: (context, index) {
                return CorporationCard(
                  corporation: res.list[index],
                );
              },
              itemCount: 10,
              separatorBuilder: (context, index) {
                return SizedBox(height: 16);
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
