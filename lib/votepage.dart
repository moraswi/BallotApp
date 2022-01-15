import 'package:ballot/adminregister.dart';
import 'package:flutter/material.dart';

class VotePage extends StatefulWidget {
  const VotePage({Key? key}) : super(key: key);

  @override
  _VotePageState createState() => _VotePageState();
}

class _VotePageState extends State<VotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(
                height: 60,
              ),
              const Text(
                "Parties are not availabel",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),

              const SizedBox(
                height: 90,
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
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    'VOTE',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),

                ),
              ),

              const Divider(
                height: 30,
                color:  Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Are you admin?',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7)
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AdminRegister()));
                      },
                      child: const Text(
                          'Click here.'
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
