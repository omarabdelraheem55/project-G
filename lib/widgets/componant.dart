
import 'package:graduation_project/helper/New_Color.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget build_containar({required double h, String? text}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(25, 0, 25, 12),
    child: Container(
      height: h,
      decoration: BoxDecoration(
        color: NewColor.primaryColour,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
          child: Text(
        text ?? "Sign Up",
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
      )),
    ),
  );
}

Widget build_containar_curcal() {
  return Container(
    width: 50,
    height: 100,
    decoration: BoxDecoration(
        color: NewColor.primaryColour, borderRadius: BorderRadius.circular(100)),
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
    padding: const EdgeInsets.fromLTRB(25, 0, 25, 12),
    child: TextFormField(
      controller: controller,
      keyboardType: TextInputType,
      onFieldSubmitted: (value) {
        print(value);
      },
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null||
            value.isEmpty||
            !value.contains("@")) {
          return "Enter Valid Email";
        }
        return null;
      },
      decoration: InputDecoration(
          focusColor: Colors.black12,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: NewColor.primaryColour),
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
                        fontSize: 16),
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
                  child: Image.asset("lib/assets/images/imageDoctor4.jpg"),
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
  required name,
  required specilaized,
  required address,
  required money,
  required rate,
  required expertise,
  required image,
}) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 4,
          offset: Offset(4, 8), // Shadow position
        ),
      ],
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("$image"),
                radius: 50,
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DR:$name",
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
                    Text("$expertise"),
                    SizedBox(
                      width: height * 0.05,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      "$rate",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("lib/assets/images/stethoscope.png",
                      width: width * 0.06),
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
                  Image.asset("lib/assets/images/location.png",
                      width: width * 0.06),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text("$address")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("lib/assets/images/mony.png",
                      width: width * 0.06),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text("Frees:$money EGP")
                ],
              ),
            ),
          ],
        ),
        Container(
          width: width * 0.80,
          height: height * 0.05,
          decoration: BoxDecoration(
            color: NewColor.primaryColour,
            border: Border.all(color: Colors.white10),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Available Today from 7:00 pm",
                style: TextStyle(color: Colors.white),
              ),
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
      child: TextFormField(
        keyboardType: TextInputType,
        onFieldSubmitted: (value) {},
        onChanged: (value) {},
        validator: (value) {
          if (value!.isEmpty) {
            return '$valiedText';
          }
          return null;
        },
        decoration: InputDecoration(
          focusColor: Colors.black12,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: NewColor.primaryColour),
          ),
          labelText: "$labelText",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
          prefixIcon: icon,
        ),
      ));
}

Widget build_Blood_Type({
  required String image,
  required String type,
}) {
  return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Lottie.network(
              image,
              width: 100,
            ),
            Expanded(
                child: Text(
              type,
              style: TextStyle(color: Colors.black, fontSize: 16),
            )),
          ],
        ),
      ));
}

class Item {
  String? name;
  String? specilaized;
  String? address;
  double? money;
  double? rate;
  double? expertise;
  String? image;
  Item(this.name, this.specilaized, this.address, this.money, this.rate,
      this.expertise, this.image);

  static List<Item> InfDoctors = [
    Item("Sara abd elraheem", "Bones", "Jahan Street", 299, 4.2, 3,
        "lib/assets/images/imageDoctor4.jpg"),
    Item("Sara abd elraheem", "Bones", "Jahan Street", 299, 4.2, 3,
        "lib/assets/images/imageDoctor4.jpg"),
    Item("Sara abd elraheem", "Bones", "Jahan Street", 299, 4.2, 3,
        "lib/assets/images/imageDoctor4.jpg"),
    Item("Sara abd elraheem", "Bones", "Jahan Street", 299, 4.2, 3,
        "lib/assets/images/imageDoctor4.jpg"),
  ];
}

Widget SearchFaild({required var controller, required String name}) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
    width: 150,
    height: 40,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25.0),
          ),
          labelText: "$name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide.none,
          ),
        ),
        controller: controller,
        keyboardType: TextInputType.text,
        onChanged: (value) {
          print(value);
        },
      ),
    ),
  );
}
