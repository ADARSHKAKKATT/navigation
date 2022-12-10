import 'package:flutter/material.dart';
class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Registrationpage")
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person,
                  size: 120),
              // Text("Name"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("name"),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.drive_file_rename_outline)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.email)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Phone Number"),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.phone)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("password"),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.password)
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Confirm Password"),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.password_rounded)
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text("Sign Up")
              ),
            ],
          ),
        ),
      ),
    );

  }
}

