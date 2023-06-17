import 'package:flutter/material.dart';

import 'button_logout.dart';

class ItemDrawer2 extends StatelessWidget {
  const ItemDrawer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(

      children:   const [
        
       ButtonLogoutItem(),
      ],
    );
  }
}
