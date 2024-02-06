import 'package:flutter/material.dart';

import '../../../core/color.dart';
import '../../../view_models/customshape.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(200);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        AppBarFirstWidget(),
        AppBarSecondWidget(),
      ],
    );
  }
}

class AppBarSecondWidget extends StatelessWidget {
  const AppBarSecondWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 130,
      bottom: -50,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.blue,
              width: 3,
            ),
          ),
          child: const Icon(
            Icons.wifi_tethering_rounded,
            size: 70,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class AppBarFirstWidget extends StatelessWidget {
  const AppBarFirstWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShape(),
      child: Container(
        color: appBarColor, // Set the background color to transparent
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: IconButton(
                    onPressed: () {
                      // Handle menu button press
                    },
                    icon: const Icon(
                      Icons.menu_rounded,
                      size: 30,
                    ),
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 5),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Dashboard",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
