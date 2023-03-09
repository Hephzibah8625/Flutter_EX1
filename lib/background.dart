import 'package:flutter/material.dart';

// BackgroundWidget
class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'CursedTinder',
              style: TextStyle(
                fontFamily: 'BelongFaith',
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
