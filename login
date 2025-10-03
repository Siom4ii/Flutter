import 'package:flutter/material.dart';
import 'package:flutter_project/Dashboard.dart';
import 'package:flutter_project/Registration.dart';

class Login extends StatelessWidget {
  const Login ({
    super.key});


  @override
  Widget build (BuildContext context){

    TextEditingController txtcontrollerEmail = TextEditingController();
    TextEditingController txtcontrollerPword = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.purple[200],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),

      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login',
              style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold, color: Colors.purpleAccent),),

            SizedBox(height: 60,),

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

            const SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Dashboard(firstname: '', lastname: '',
                            email: txtcontrollerEmail.text,
                            password: txtcontrollerPword.text
                        ),
                  ),
                );
              },
              child: const Text('LOGIN', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),
            ),

            const SizedBox(height: 20),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Registration(),
                  ),
                );
              },
              child: const Text("Don't have an account yet? Register", style: TextStyle(fontSize: 18) ),
            ),
          ],


        ),
      ),
    );
  }
}
