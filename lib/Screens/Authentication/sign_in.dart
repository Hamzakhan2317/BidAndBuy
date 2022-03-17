import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bid_to_buy/GlobalComponents/button_global.dart';
import 'package:bid_to_buy/Screens/Authentication/forgot_password.dart';
import 'package:bid_to_buy/Screens/Authentication/sign_up.dart';
import 'package:bid_to_buy/Screens/Home/home_screen.dart';
import 'package:bid_to_buy/constant.dart';
import 'package:nb_utils/nb_utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController controller = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kMainColor,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        // elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Bid Callers',
          style: kTextStyle.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  ' B I D   I T   T O   W I N   I T',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Row(
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                height: 100.0,
                width: 230.0,
                child: const Center(
                  child: Text(
                    '   SIGN IN',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(7.0, 15.0, 7.0, 7.0),
                padding: EdgeInsets.all(25.0),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 60.0,
                    child: AppTextField(
                      textFieldType: TextFieldType.EMAIL,
                      decoration: const InputDecoration(
                        labelText: 'Email Address',
                        hintText: 'maantheme@maantheme.com',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: kTextStyle,
                      hintText: 'Enter password',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          value: isChecked,
                          thumbColor: kGreyTextColor,
                          onChanged: (bool value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                        ),
                      ),
                      Text(
                        'Save Me',
                        style: kTextStyle,
                      ),
                      const Spacer(),
                      Text(
                        'Forgot Password?',
                        style: kTextStyle,
                      ).onTap(() {
                        const ForgotPassword().launch(context);
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ButtonGlobal(
                    buttontext: 'Log In',
                    buttonDecoration:
                        kButtonDecoration.copyWith(color: kMainColor),
                    onPressed: () {
                      const HomeScreen().launch(context);
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: kTextStyle.copyWith(
                            color: kGreyTextColor,
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            'Sign Up',
                            style: kTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              color: kMainColor,
                            ),
                          ).onTap(() {
                            const SignUp().launch(context);
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
