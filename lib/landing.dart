import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas2_prakmobile/login.dart';

class Landing extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Image.asset("assets/images/logo.png", height: 43.5, width: 43.8),
                  SizedBox(height: 5),
                  Text("RAMENE", style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  )),
                  SizedBox(height: 30),
                  Image.asset("assets/images/plate.png", height: 237.2, width: 249.6),
                  SizedBox(height: 30),
                  Text("All your \n favorite ramen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black,
                  )),
                  SizedBox(height: 10),
                  Text("Delicious as is or toussed with your favorite ingredients",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    
                    fontSize: 16,
                    color: Colors.grey,
                  )),
                  SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            minimumSize: const Size.fromHeight(55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: (){}, 
                          child: Text("Sign In",
                          style: TextStyle(
                            fontSize: 18,
                          )),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 0,
                            side: BorderSide(width: 1, color: Colors.orangeAccent),
                            minimumSize: const Size.fromHeight(55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login(),));
                          }, 
                          child: Text("Login",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.orangeAccent,
                          )),
                        ),    
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}