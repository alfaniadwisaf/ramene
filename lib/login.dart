import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas2_prakmobile/homepage.dart';
import 'package:tugas2_prakmobile/landing.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Colors.black,),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Landing(),));
          },
          ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Welcome Back",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Poppins Bold',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.black,
                    )),
                    ),
                    Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Login to your account",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Colors.grey,
                    )),
                    ),
                    SizedBox(height: 20),
                    Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Email",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Colors.black,
                    )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                      controller: null,
                      style: TextStyle(
                        fontFamily: 'Poppins Light',
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Email",
                        hintText: "",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins Light',
                          fontSize: 16,
                  ),
                ),
              ),
                    ),
                    Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Password",
                    style: TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Colors.black,
                    )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                      controller: null,
                      style: TextStyle(
                        fontFamily: 'Poppins Light',
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Password",
                        hintText: "Password",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins Light',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                  ),
                    ),
                  TextButton(
                  onPressed: () {
                  //forgot password screen
                   },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: const Text('Forgot Password?',
                      style: TextStyle(
                        color: Colors.orangeAccent,
                      ),),
                  ),
                  ),
                    SizedBox(height: 50),
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
                            onPressed: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homepage(),));
                            }, 
                            child: Text("Login",
                            style: TextStyle(
                              fontFamily: 'Poppins Bold',
                              fontSize: 18,
                            )),
                            
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text('Dont have an account yet?',
                              textAlign: TextAlign.center),
                              TextButton(
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.orangeAccent),
                                ),
                                onPressed: () {
                                  //signup screen
                                },  
                              ),
                            ]
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
      ),
    );
  }
}