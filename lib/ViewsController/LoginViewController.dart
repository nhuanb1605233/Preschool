import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:preschool/UIDesign/primary_button.dart';
import 'package:preschool/ViewsController/InfoCustomerLoginViewController.dart';
import 'package:preschool/constants.dart';

class LoginViewController extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      resizeToAvoidBottomInset: false,

        body: SingleChildScrollView(
          reverse: true,
        child:  Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.top),
            child:  Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 0),child: SizedBox(
                      width: double.infinity,
                      child: new Text("HELLO", textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 42,color: BrandSchool),)),),
                  Padding(padding:EdgeInsets.fromLTRB(0, 5 , 0, 70),child:  new SizedBox(
                    width: double.infinity,
                    child:Text(
                      'Chào mừng quý phụ huynh đến với \n Preschool DOPU',textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorText1),
                    ),),),
                  Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone,
                            color: ColorIcons,
                          ),
                          hintText: 'Nhập số điện thoại',
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                    child: SizedBox(
                      width: 173.0,
                      child: PrimaryButton(press: (){
                        Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context)=> InfoCustomerLoginViewController()
                         )
                        );

                      },text: "Đăng Nhập",),),
                  ),

                  Center(
                    child: Padding(
                      padding:EdgeInsets.fromLTRB(0, 60 , 0, 0),
                      child: Text('Or sign in swift',style: TextStyle(color: ColorText1,fontSize: 14 ),),
                    ),
                  ),
                  Container(
                    width: 160,
                    padding: const EdgeInsets.all(20.0),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Image.asset("assets/icons/icn_facebook.png",height: 48,width: 48,),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                          child: Image.asset("assets/icons/icn_google.png"),
                        ),

                      ],
                    ),
                  ),

                ],
              )),
           )


      ),
    );
  }
}
