import 'package:flutter/cupertino.dart';
import 'package:graduation_project/new_color/New_Color.dart';
import 'package:flutter/material.dart';
Widget build_containar(

) {
  return
    Padding(
      padding:  EdgeInsets.fromLTRB(25, 0, 25, 12),
      child: Container(
        decoration: BoxDecoration(
          color: NewColor.mint,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22),
            )),
      ),
    );
}
Widget build_containar_curcal(){
    BuildContext context;
    return Container(
      width:50,
      height: 100,
      decoration: BoxDecoration(
        color: NewColor.mint,
        borderRadius: BorderRadius.circular(100)
      ),
  );
}
Widget Textfield1(
    @required controller,
    @required TextInputType,
    @required icon,
    @required String labelText,
    @required String valiedText,
    ){
  return Padding(
    padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
    child: TextFormField(

      controller:controller ,
      keyboardType:TextInputType ,
      onFieldSubmitted: (value){
        print(value);
      },
      onChanged: (value){
        print(value);
      },
      validator: (value)
      {
        if(value!.isEmpty)
        {
          return '$valiedText';
        }
        return null;
      },
      decoration:
      InputDecoration(
        focusColor: Colors.black12,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: NewColor.mint),borderRadius:BorderRadius.circular(25.0),
        ),
        labelText: "$labelText",
        border: OutlineInputBorder(borderRadius:BorderRadius.circular(25.0),
          borderSide: BorderSide(),
        ),
        prefixIcon:icon
      ),
    ),

  );
}
class CustomShap extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}