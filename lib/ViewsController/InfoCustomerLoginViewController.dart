import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preschool/UIDesign/primary_button.dart';
import 'package:preschool/ViewsController/SentSMSViewController.dart';
import 'package:preschool/constants.dart';

class InfoCustomerLoginViewController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(24, 24, 0, 0),
              child: SizedBox(
                width: double.infinity,
                child: IconButton(
                    alignment: Alignment.centerLeft,
                    icon: Icon(Icons.arrow_back),
                    color: ButtonIntroColor,
                    iconSize: 24,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 42, 0, 0),
            child: SizedBox(
                width: double.infinity,
                child: new Text(
                  "HELLO",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: BrandSchool),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 5, 0, 64),
            child: new SizedBox(
              width: double.infinity,
              child: Text(
                'Mừng quý phụ huynh trở lại',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorText1),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.woolha.com/media/2020/03/eevee.png'),
                  minRadius: 50,
                  maxRadius: 75,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                  child: Text(
                    'Trần Phú Nhuận',
                    style: TextStyle(
                        fontSize: 20,
                        color: BrandSchool,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Text(
                    '0343000909',
                    style: TextStyle(fontSize: 14, color: ColorText1),
                  ),
                ),
                SizedBox(
                  width: 151,
                  child: PrimaryButton(
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context)=>SentSMSViewController()
                        )
                      );
                    },
                    text: "Tiếp tục",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 90, 0, 10),
                  child: SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Đăng nhập bằng tài khoản khác?'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
