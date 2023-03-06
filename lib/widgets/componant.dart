import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:flutter/material.dart';

Widget build_containar() {
  return Padding(
    padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
    child: Container(
      decoration: BoxDecoration(
        color: NewColor.mint,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
          child: Text(
        "Sign Up",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
      )),
    ),
  );
}

Widget build_containar_curcal() {
  BuildContext context;
  return Container(
    width: 50,
    height: 100,
    decoration: BoxDecoration(
        color: NewColor.mint, borderRadius: BorderRadius.circular(100)),
  );
}

Widget Textfield1(
  @required controller,
  @required TextInputType,
  @required icon,
  @required String labelText,
  @required String valiedText,
) {
  return Padding(
    padding: EdgeInsets.fromLTRB(25, 0, 25, 12),
    child:
    TextFormField(
      controller: controller,
      keyboardType: TextInputType,
      onFieldSubmitted: (value) {
        print(value);
      },
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value!.isEmpty) {
          return '$valiedText';
        }
        return null;
      },
      decoration: InputDecoration(
          focusColor: Colors.black12,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: NewColor.mint),
            borderRadius: BorderRadius.circular(25.0),
          ),
          labelText: "$labelText",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(),
          ),
          prefixIcon: icon),
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

Widget PopularDoctor(
    {required width,
    required height,
    required String image,
    required String name,
    required String type,
    required double evaluation}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          width: width * 0.6,
          height: height * 0.18,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.08,
                  ),
                  Text(
                    "$type",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    "$evaluation",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 2,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget PopularNurse(
    {required width,
    required height,
    required String image,
    required String name,
    required String type,
    required double evaluation}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          width: width * 0.6,
          height: height * 0.18,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Expanded(
                child: ClipRRect(
                  child: Image.asset("lib/assets/images/acc_doc4.jpg"),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.08,
                  ),
                  Text(
                    "Nurse",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Text(
                    "DR:Safaa",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: width * 0.09,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget UpComingAppoinment({
  required width,
  required height,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("lib/assets/images/doctora.jpg"),
                radius: 50,
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "DR:Omar Saleh",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Text(
                  "Tomorrow 24 Agust 2023",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Row(
                  children: [
                    Image.asset(
                      "lib/assets/images/appoiment.png",
                      width: width * 0.05,
                    ),
                    SizedBox(
                      width: height * 0.005,
                    ),
                    const Text("3 years"),
                    SizedBox(
                      width: height * 0.05,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("lib/assets/images/img_1.png", width: width * 0.06),
              SizedBox(
                width: width * 0.02,
              ),
              Text("Neurology specialized in pediatric")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("lib/assets/images/img_2.png", width: width * 0.06),
              SizedBox(
                width: width * 0.02,
              ),
              Text("Mans: Ahmed Maher street")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("lib/assets/images/img_3.png", width: width * 0.06),
              SizedBox(
                width: width * 0.02,
              ),
              Text("Frees:200 EGP")
            ],
          ),
        ),
        Container(
          width: width * 0.90,
          height: height * 0.05,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.white10),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Available Today from 7:00 pm"),
            ],
          ),
        ),
        SizedBox(
          height: 2,
        )
      ],
    ),
  );
}

Widget TextFaildDonate({
  @required controller,
  @required TextInputType,
  @required icon,
  required String labelText,
  required String valiedText,
}) {
  return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        child: TextFormField(
          keyboardType: TextInputType,
          onFieldSubmitted: (value) {
            print(value);
          },
          onChanged: (value) {
            print(value);
          },
          validator: (value) {
            if (value!.isEmpty) {
              return '$valiedText';
            }
            return null;
          },
          decoration: InputDecoration(
            focusColor: Colors.black12,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: NewColor.mint),
            ),
            labelText: "$labelText",
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
            prefixIcon:icon,

          ),
        ),
      ));
}
