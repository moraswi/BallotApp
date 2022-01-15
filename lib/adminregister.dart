import 'package:ballot/insertparty.dart';
import 'package:flutter/material.dart';

class AdminRegister extends StatefulWidget {
  const AdminRegister({Key? key}) : super(key: key);

  @override
  _AdminRegisterState createState() => _AdminRegisterState();
}

class _AdminRegisterState extends State<AdminRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(
                height: 20,
              ),
              const Text(
                "Admin LogIn",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter admin email address',
                  border: OutlineInputBorder(),
                  // prefix: Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'password',
                  hintText: 'enter admin password',
                  border: OutlineInputBorder(),
                  //prefix: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                maxLength: 10,
              ),


              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: const LinearGradient(colors: [Colors.blue, Colors.green]),
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => InsertParty()));

                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
