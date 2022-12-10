import 'package:flutter/material.dart';
import 'package:navigation/reg.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: true,
    home:const Form() ,
  ),
  );
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 120,),
              Icon(Icons.person_rounded,size: 90),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: TextField(decoration: InputDecoration(
                    label: Text("email"),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                        Icons.mail
                    )
                ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: TextField(decoration: InputDecoration(
                    label: Text("password"),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                        Icons.remove_red_eye
                    )
                ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Reg()));
              },child: Text("SUBMIT"),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.indigo,
                ),

                /*TextButton(onPressed:(){}, child: Text("Submit"),
              )*/
              ),
            ],
          ),
        ),
      );
  }
}
