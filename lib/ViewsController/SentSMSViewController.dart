import 'package:anime_pin_code_field/anime_pin_code_field.dart';
import 'package:flutter/material.dart';
class SentSMSViewController  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.pinkAccent.shade100.withOpacity(.4),
    child: Center(
    child: AnimePinCodeField(
    onSubmitClick: (pinCode) {
    print('pin code is: $pinCode');
    },
    ),
    )
        )


    );
  }
}