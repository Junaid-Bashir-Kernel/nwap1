import 'package:flutter/material.dart';
import "package:firebase_auth/firebase_auth.dart";
import "package:cloud_firestore/cloud_firestore.dart";

class TabBarview extends StatefulWidget {
  @override
  State<TabBarview> createState() => _TabBarview();
}

class _TabBarview extends State<TabBarview> {
  Future logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(
                icon: Icon(Icons.account_circle),
              ),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection("nwavdrs").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) return Text('error=${snapshot.error}');
                if (snapshot.hasData) {
                  final docs = snapshot.data!.docs;

                  return ListView.builder(
                    itemCount: docs.length,
                    itemBuilder: (context, i) {
                      final data = docs[i].data();
                      return ListTile(
                        title: Text(data["vendorname"]),
                      );
                    },
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            ElevatedButton(onPressed: logout, child: const Text("logout"))
          ],
        ),
      ),
    );
  }
}
