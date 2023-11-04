import 'package:flutter/material.dart';
import 'chatbot.dart';

class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 128, 0, 0),
          foregroundColor: Colors.white,
          title: const Text("University Chatbot", ),
          centerTitle: true,
          elevation: 0,
          actions: [IconButton(onPressed:(){} , icon: Image.asset('assets/college_icon.png'))],
        ),
        body:Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset("assets/rait.jpg"),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("Depertment of Computer Engineering",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Center(child: Text("Mentor : Dr. Dhiraj Magare",style: TextStyle(fontSize: 16),),),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Made by:",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Shreyas Dhekane ",style: TextStyle(fontSize: 14),), 
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Shreyas Joshi",style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Omkar Sarmalkar",style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Chaitanya Thorat",style: TextStyle(fontSize: 14),)
                  ],
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Center(
                      
                      child: ElevatedButton(onPressed: () {Navigator.push(
                          context, MaterialPageRoute(builder: (BuildContext context){
                            return Home();}));},
                      child: Text("Go To Chatbot >>>"),
                                  ),
                                ),
                  ),
            ],
          )
        )
      )
    );
  }
}