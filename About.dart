import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: About(),
    debugShowCheckedModeBanner: false,
  ));
}

//stless
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(""),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 30.0, left: 30),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(radius: 40, backgroundImage: AssetImage("lib/asset/images/haider3966.png.jpg"),),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Ashraf Haider Mini", style: TextStyle(fontSize: 25, color: Colors.black , fontFamily: "Roboto"),),
                      Text("Android Developer", style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Robotor"),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.school, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("B.sc in CSE", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.note_add_rounded, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("Android Portfolio App", style: TextStyle(fontSize: 18,color:Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_pin, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("Dhaka, Savar", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("haider15-3966@diu.edu.bd", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone, size: 30,color: Colors.blue,),
                        SizedBox(width: 15,),
                        Text("+8801644428730", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("I'm Ashraf Haider Mini, a dedicated learner with a strong academic background. I graduated from Baldighat J.M Sarker High School in 2017 and Gaffargaon Govt. College in 2019 with a GPA of 4.55. Currently pursuing a B.Sc. in Computer Science and Engineering at Daffodil International University, I'm passionate about exploring technology's creative potential.", style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Robotor"),),
              ),
              SizedBox(height: 60,),
              Text("Created By A.HAIDER M", style: TextStyle(fontSize: 13,color: Colors.blue,fontFamily: "Robotor"),),
            ],
          ),
        ),
      ),
    );
  }
}
