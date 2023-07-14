import 'package:e_commerce/shared/constants.dart';
import 'package:e_commerce/shared/sharedlist.dart';
import 'package:e_commerce/widgets/login/orcontainer_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;
    bool isSignup = false;
    int listLenght = isSignup == false
        ? SharedList.loginTextsList[0].length
        : SharedList.loginTextsList[1].length;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.08,
          ),
          child: Column(
            children: [
              // Logo
              /// TODO Logo
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.04,
                  bottom: height * 0.08,
                ),
                child: const Text(
                  "Logo",
                ),
              ),
              // Text
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.02),
                child: Text(
                  isSignup == false
                      ? SharedList.loginText[0]
                      : SharedList.loginText[1],
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              // Email and password
              for (int i = 0; i < listLenght; i++)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.01),
                  child: TextFormField(
                    initialValue:
                        SharedList.loginPageTextFieldList[i].initialValue,
                    decoration: InputDecoration(
                      labelText: SharedList.loginPageTextFieldList[i].labelText,
                      // errorText: 'Error',
                      border: const OutlineInputBorder(),
                      suffixIcon: isSignup == false
                          ? i == 2
                              ? Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: height * 0.01,
                                  ),
                                  child: FaIcon(
                                    SharedList
                                        .loginPageTextFieldList[i].icons![i],
                                  ),
                                )
                              : const SizedBox()
                          : i == 1
                              ? Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: height * 0.01,
                                  ),
                                  child: FaIcon(
                                    SharedList
                                        .loginPageTextFieldList[i].icons![i],
                                  ),
                                )
                              : const SizedBox(),

                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Constants.textPrimaryColor,
                        ), //<-- SEE HERE
                      ),
                    ),
                  ),
                ),
              // Forget
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    Text(
                      "Forget Password?",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ],
                ),
              ),
              // Sign button
              SizedBox(
                width: double.maxFinite,
                child: Card(
                  color: Constants.textPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      height * 0.01,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.02,
                    ),
                    child: Center(
                      child: Text(
                        isSignup == false
                            ? SharedList.loginorup[0]
                            : SharedList.loginorup[1],
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  color: Constants.scaffoldPrimaryColor,
                                ),
                      ),
                    ),
                  ),
                ),
              ),
              // Or buttons
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.04,
                ),
                child: Row(
                  children: [
                    LoginPageorContainerWidget(height: height),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.01,
                      ),
                      child: const Text(
                        "or sign in with",
                      ),
                    ),
                    LoginPageorContainerWidget(height: height),
                  ],
                ),
              ),
              // Or buttons
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 3; i++)
                      Card(
                        color: SharedList.loginorLoginButtons[i].iconColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            height * 0.015,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                            height * 0.02,
                          ),
                          child: FaIcon(
                            SharedList.loginorLoginButtons[i].icon,
                            color: Constants.scaffoldPrimaryColor,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              // Signup Button
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.02,
                ),
                child: RichText(
                  text: TextSpan(
                    text: "Don’t have account? ",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 20,
                        ),
                    children: [
                      TextSpan(
                        text: "Sign up.",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
