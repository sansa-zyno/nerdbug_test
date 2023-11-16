import 'package:nerdbug_test/helpers/alert.dart';
import 'package:nerdbug_test/helpers/common.dart';
import 'package:nerdbug_test/helpers/style.dart';
import 'package:nerdbug_test/screens/home.dart';
import 'package:nerdbug_test/services/auth.dart';
import 'package:nerdbug_test/widgets/GradientButton/GradientButton.dart';
import 'package:nerdbug_test/widgets/curved_textfield.dart';
import 'package:nerdbug_test/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  // TextEditingController address = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscurePass1 = true;
  bool loading = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                CustomText(
                  text: "Sign In",
                  size: 28,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: "Welcome back!",
                  size: 16,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(
                  text: "Email",
                  color: black,
                  size: 16,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                CurvedTextField(
                  hint: "Enter email",
                  controller: emailController,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(
                  text: "Password",
                  color: black,
                  size: 16,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                CurvedTextField(
                    hint: "Enter password",
                    obscureText: obscurePass1,
                    maxlines: 1,
                    controller: passwordController,
                    suffixIcon: IconButton(
                        onPressed: () {
                          obscurePass1 = !obscurePass1;
                          setState(() {});
                        },
                        icon: !obscurePass1
                            ? Icon(
                                Icons.visibility_off,
                                color: black,
                              )
                            : Icon(
                                Icons.visibility,
                                color: black,
                              ))),
                SizedBox(
                  height: 100,
                ),
                loading
                    ? Center(child: CircularProgressIndicator())
                    : Center(
                        child: GradientButton(
                          title: "Submit",
                          textClr: Colors.white,
                          clrs: [black, black],
                          onpressed: () {
                            signin();
                          },
                        ),
                      ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  signin() async {
    loading = true;
    setState(() {});
    bool res = await AuthService()
        .signInEmailAndPass(emailController.text, passwordController.text);
    if (res) {
      changeScreenRemoveUntill(context, Home());
    } else {
      showDialog(
          context: context,
          builder: (ctx) => ShowDialogWidget(
                titleText: "Sign In Failed",
                subText: "Please check your sign in credentials and try again",
                isLoggedIn: false,
              ));
      loading = false;
      setState(() {});
    }
  }
}
