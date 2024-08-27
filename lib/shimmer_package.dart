import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmer_Package extends StatefulWidget {
  @override
  _Shimmer_PackageState createState() => _Shimmer_PackageState();
}

class _Shimmer_PackageState extends State<Shimmer_Package> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer Effect'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                width: double.infinity,
                height: 200.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Text('Shimmer Package in flutter',
              style: TextStyle(fontSize: 50, color:  Colors.orange),),
            ),
            SizedBox(height: 8.0),
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                width: 150.0,
                height: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}