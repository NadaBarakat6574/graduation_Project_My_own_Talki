import 'package:flutter/material.dart';
import 'package:graduation_project_my_own_talki/my_theme.dart';
class MyForme extends StatelessWidget {
  IconButton ?addicon;
  TextInputType InputType;
  String ?icon, name;
  MyForme(this.name, this.InputType, {this.addicon, this.icon});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
            BorderSide(color: MyThemeData.colorgray, width: 3)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
            BorderSide(color: MyThemeData.colorgray, width: 3)),
        hintText: "$name",
        hintStyle: TextStyle(
          color: MyThemeData.filetextfiled,
          fontSize: 20,
          fontWeight: MyThemeData.fontWeight.fontWeight,
        ),
        hintMaxLines: 2,
        filled: true,
        fillColor: MyThemeData.colorgray,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: addicon,
        ),
        prefixIcon: ImageIcon(
          AssetImage('$icon'),
          color: MyThemeData.filetextfiled,
        ),
      ),
      keyboardType: InputType,
    );
  }
}
class Myform2 extends StatelessWidget {
  bool Visibilty_Paswword = true;
  IconButton ?addicon;
  String name;
  Icon ?Lock;
  TextInputType InputType;
  Myform2(this.name,this.Lock,this.InputType,{this.addicon,Visibilty_Paswword});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
            BorderSide(color: MyThemeData.colorgray, width: 3)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
            BorderSide(color: MyThemeData.colorgray, width: 3)),
        hintText: "$name",
        hintStyle: TextStyle(
          color: MyThemeData.filetextfiled,
          fontSize: 20,
          fontWeight: MyThemeData.fontWeight.fontWeight,
        ),
        hintMaxLines: 2,
        filled: true,
        fillColor: MyThemeData.colorgray,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: addicon,
        ),
        prefixIcon:Lock
      ),
      keyboardType: InputType,
      obscureText: Visibilty_Paswword,
    );
  }
}


