import 'package:ballot/loginscreen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                   "Welcome",
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
                   hintText: 'Enter email address',
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
                   labelText: 'Password',
                   hintText: 'Enter password',
                   border: OutlineInputBorder(),
                   //prefix: Icon(Icons.lock),
                   suffixIcon: Icon(Icons.remove_red_eye),
                 ),
                 maxLength: 10,
               ),
               const SizedBox(
                 height: 25,
               ),
               TextFormField(
                 keyboardType: TextInputType.visiblePassword,
                 obscureText: true,
                 decoration: const InputDecoration(
                   labelText: 'Password',
                   hintText: 'Confirm Password',
                   border: OutlineInputBorder(),
                   //prefix: Icon(Icons.lock),
                   suffixIcon: Icon(Icons.remove_red_eye),
                 ),
                 maxLength: 10,
               ),
               const SizedBox(
                 height: 25,
               ),
               TextFormField(
                 keyboardType: TextInputType.phone,

                 decoration: const InputDecoration(
                   labelText: 'Number',
                   hintText: 'Enter mobile number',
                   border: OutlineInputBorder(),
                   //prefix: Icon(Icons.lock),

                 ),

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

                   },
                   child: const Text(
                     'REGISTER',
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

/*TextFormField(
                 keyboardType: TextInputType.emailAddress,
                 decoration: const InputDecoration(
                   labelText: 'Email',
                   hintText: 'Enter email address',
                   border: OutlineInputBorder(),
                 ),

               ),
               const SizedBox(
                 height: 25,
               ),

               TextFormField(
                 keyboardType: TextInputType.visiblePassword,
                 obscureText: true,
                 maxLength: 10,
                 decoration: const InputDecoration(
                   labelText: 'Password',
                   hintText: 'enter password',
                   border: OutlineInputBorder(),
                 ),

               ),
               const SizedBox(
                 height: 25,
               ),

               TextFormField(
                 keyboardType: TextInputType.visiblePassword,
                 obscureText: true,
                 maxLength: 10,
                 decoration: const InputDecoration(
                   labelText: 'Password',
                   hintText: 'Confirm Password',
                   border: OutlineInputBorder(),
                 ),

               ),
               const SizedBox(
                 height: 25,
               ),

               TextFormField(
                 keyboardType: TextInputType.phone,
                 //maxLength: 10,
                 decoration: const InputDecoration(
                   labelText: 'Mobile Number',
                   hintText: 'Number',
                   border: OutlineInputBorder(),
                 ),

               ),

               const SizedBox(
                 height: 30,
               ),
               Container(
                 height: 40,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(100),
                   gradient: const LinearGradient(colors: [Colors.blue, Colors.green]),
                 ),
                 child: MaterialButton(
                   onPressed: (){},
                   child: const Text(
                     'REGISTER',
                     style: TextStyle(
                       fontSize: 25,
                       color: Colors.white,
                     ),
                   ),

                 ),
               ),*/