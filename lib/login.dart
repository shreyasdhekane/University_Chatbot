import 'package:flutter/material.dart';
import 'intro_page.dart';
class Loginpg extends StatefulWidget {
  const Loginpg({super.key});

  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 0, 0),
        foregroundColor: Colors.white,
        title: const Text("University Chatbot", ),
        centerTitle: true,
        actions: [IconButton(onPressed:(){} , icon: Image.asset('assets/college_icon.png'))],
        elevation: 0,
      ),
      body:Column(
        children: [
          Center(child: Image.asset("assets/Learning.png")),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Username",
                    prefixIcon: const Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.password_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
          ),
                ElevatedButton(onPressed: (){Navigator.push(
                          context, MaterialPageRoute(builder: (BuildContext context){
                            return intro_page();}));}, child: Text("Login")),
                            Center(child: Text("or")),
                          
                          TextButton(onPressed:(){Navigator.push(
                          context, MaterialPageRoute(builder: (BuildContext context){
                            return intro_page();}));} , child: Text("Skip Sign in..."))
        ],
      ),
    );
  }
}