import 'package:ballot/registerscreen.dart';
import 'package:ballot/votepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
      child: SingleChildScrollView(
        child: Column(
          children:[
            const Text(
                'VOTE',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,

              ),

            ),
            const SizedBox(
              height: 25,
            ),


            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'email',
                hintText: 'enter email address',
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
                hintText: 'enter user password',
                border: OutlineInputBorder(),
                //prefix: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              maxLength: 10,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: const Text("Forget Password?"))
              ],
            ),
            const SizedBox(
              height: 25,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VotePage()));
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

            const SizedBox(
              height: 30,
            ),
            const Icon( Icons.fingerprint, size: 60, color: Colors.teal,),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 30,
              color:  Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7)
                  ),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                    },
                    child: const Text(
                        'Register Account'
                    ))
              ],
            ),

          ]
        ),
      ),
      ),
    );
  }
}

