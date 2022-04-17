import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // firebase
  // final _auth = FirebaseAuth.instance;

  // string for displaying the error Message
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.black,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            Navigator.pushNamed(context, 'first');
            // signIn(emailController.text, passwordController.text);
          },
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          CupertinoIcons.arrow_left,
          color: Colors.black,
          size: 30,
        ),
        title: Text(
          'Login',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 5),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              'Log in to your existing account of Dr.AQI')),
                    ),
                    SizedBox(
                        height: 300,
                        child: Image.asset(
                          "assets/Login.png",
                          fit: BoxFit.contain,
                        )),
                    // SizedBox(height: 5),
                    emailField,
                    SizedBox(height: 10),
                    passwordField,
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text('Forgot Password?')),
                    ),
                    SizedBox(height: 20),
                    loginButton,
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 140,
                          child: Divider(
                            thickness: 1.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'OR',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 140,
                          child: Divider(
                            thickness: 1.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ElevatedButton.icon(
                        // color: Colors.white,
                        // style: ElevatedButton.styleFrom(),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () async {
                          // await authentication.googleSignIn();
                        },
                        icon: Icon(
                          EvaIcons.google,
                          size: 30,
                          color: Colors.black,
                        ),
                        label: Text(
                          'Sign in with google',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             RegistrationScreen()));
                          },
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, 'signup');
                            },
                            child: Text(
                              "  Create Account",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // login function
  // void signIn(String email, String password) async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       await _auth
  //           .signInWithEmailAndPassword(email: email, password: password)
  //           .then((uid) => {
  //                 // Fluttertoast.showToast(msg: "Login Successful"),
  //                 // Navigator.of(context).pushReplacement(
  //                 //     MaterialPageRoute(builder: (context) => IntroScreen())),
  //               });
  //     } on FirebaseAuthException catch (error) {
  //       switch (error.code) {
  //         case "invalid-email":
  //           errorMessage = "Your email address appears to be malformed.";

  //           break;
  //         case "wrong-password":
  //           errorMessage = "Your password is wrong.";
  //           break;
  //         case "user-not-found":
  //           errorMessage = "User with this email doesn't exist.";
  //           break;
  //         case "user-disabled":
  //           errorMessage = "User with this email has been disabled.";
  //           break;
  //         case "too-many-requests":
  //           errorMessage = "Too many requests";
  //           break;
  //         case "operation-not-allowed":
  //           errorMessage = "Signing in with Email and Password is not enabled.";
  //           break;
  //         default:
  //           errorMessage = "An undefined Error happened.";
  //       }
  //       // Fluttertoast.showToast(msg: errorMessage!);
  //       print(error.code);
  //     }
  //   }
  // }
}
