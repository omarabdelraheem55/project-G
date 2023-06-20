import 'package:flutter/material.dart';
import 'package:graduation_project/helper/New_Color.dart';
import 'package:graduation_project/screens/blood_bank/donorRequest.dart';

import 'donationRequest.dart';
class SelectedRequest extends StatefulWidget {
  const SelectedRequest({Key? key}) : super(key: key);

  @override
  State<SelectedRequest> createState() => _SelectedRequestState();
}

class _SelectedRequestState extends State<SelectedRequest> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: NewColor.primaryColour),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DonationRequest()));}, child: Text("Donation request",style: TextStyle(color:Colors.white,fontSize: 18),),),
              SizedBox(height: 10,),
              ElevatedButton(
    style:ElevatedButton.styleFrom(backgroundColor: NewColor.primaryColour),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DonateRequest()));
              }, child: Text("Donor request",style: TextStyle(color:Colors.white,fontSize: 18),),),
            ],
          ),
        ],
      ),
    );
  }
}
