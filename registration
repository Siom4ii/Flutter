import 'package:flutter/material.dart';
import 'package:flutter_project/Buttondesigns.dart';
import 'package:flutter_project/Dashboard.dart';
import 'package:flutter_project/Login.dart';
import 'package:flutter_project/Newpage.dart';
import 'package:flutter_project/Page2.dart';
import 'package:flutter_project/Textfielddesigns.dart';

class Registration extends StatelessWidget {
  const Registration ({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
      ),
      home: NewHomePage(title: 'Registration'),
    );
  }
}

//widget for home page
class NewHomePage extends StatelessWidget {
  final String title;
  NewHomePage ({super.key, required this.title});

  TextEditingController txtcontrollerFname = TextEditingController();
  TextEditingController txtcontrollerLname = TextEditingController();
  TextEditingController txtcontrollerEmail = TextEditingController();
  TextEditingController txtcontrollerPword = TextEditingController();

  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
        backgroundColor: Colors.purple[200],
        centerTitle: true,
      ),

      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Registration',
                style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold, color: Colors.purpleAccent),),

              SizedBox(height: 50,),
              TextField(
                controller: txtcontrollerFname,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Firstname',
                  labelText: 'FIRST NAME',
                ),
                onChanged: (value){},
              ),

              const SizedBox(height: 25),

              TextField(
                controller: txtcontrollerLname,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Last Name',
                  labelText: 'LAST NAME',
                ),
                onChanged: (value){},
              ),

              const SizedBox(height: 25),

              TextField(
                controller: txtcontrollerEmail,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                  labelText: 'EMAIL',
                ),
                onChanged: (value){},
              ),

              const SizedBox(height: 20),

              TextField(
                controller: txtcontrollerPword,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                  labelText: 'PASSWORD',
                ),
                onChanged: (value){},
              ),

              const SizedBox(height: 25),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          Dashboard(
                            firstname: txtcontrollerFname.text,
                            lastname: txtcontrollerLname.text,
                            email: txtcontrollerEmail.text,
                            password: txtcontrollerPword.text,
                          ),
                    ),
                  );
                },
                child: const Text('REGISTER', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),
              ),

              const SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Login(),
                    ),
                  );
                },
                child: const Text("Already have an account? Login", style: TextStyle(fontSize: 18), ),
              ),
            ],


        ),
      ),
    );
  }
}
