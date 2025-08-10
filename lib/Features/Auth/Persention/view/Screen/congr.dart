import 'package:flutter/material.dart';
import 'package:marketia/Features/Auth/Persention/view/Screen/congrebody.dart';
import 'package:marketia/core/image_manager/image_manager.dart';

class Congr extends StatelessWidget {
  const Congr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 8),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageManager.back_arrow),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(width: 6),
          ],
        ),
      ),
      body: Congrebody(),
    );
  }
}
