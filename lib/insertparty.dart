import 'package:flutter/material.dart';

class InsertParty extends StatefulWidget {
  const InsertParty({Key? key}) : super(key: key);

  @override
  _InsertPartyState createState() => _InsertPartyState();
}

class _InsertPartyState extends State<InsertParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(
                height: 50,
              ),
              const Text(
                "INSERT PARTIES",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                ),
              ),
              const SizedBox(
                height: 80,
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
                    'INSERT',
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
