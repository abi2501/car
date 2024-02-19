import 'package:car/custom_templates/scaffold_template.dart';
import 'package:car/util/constants.dart';
import 'package:car/util/constants/image_strings.dart';

import 'package:car/util/widget_helper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KScaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset(TImages.appLogo)),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: getLoginFormContent())
          ],
        ),
      ),
    ));
  }

  Widget getLoginFormContent() {
    return Form(
      key: _loginFormKey,
      child: Container(
        child: Expanded(
            child: Column(
          children: [
            getLoginTextField(Icons.person, "Username", _usernameController,
                "Enter Username", false),
            getLoginTextField(Icons.key, "Password", _passwordController,
                "Enter Password", true),
            addVerticalSpace(10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Trouble logging in?",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ),
            addVerticalSpace(10),
            ElevatedButton(
              onPressed: () {
                if (_loginFormKey.currentState!.validate()) {}
              },
              child: const Text("Log In"),
            ),
            addVerticalSpace(10),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            )
          ],
        )),
      ),
    );
  }

  Widget getLoginTextField(
      lableIcon, hinttxt, txtController, validatormsg, isPWd) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(lableIcon),
          addHorizontalSpace(10),
          Expanded(
              child: TextFormField(
            controller: txtController,
            obscureText: isPWd,
            style: Theme.of(context).textTheme.bodyMedium,
            onChanged: (value) {
              setState(() {
                txtController.text = value;
              });
            },
            validator: (String? value) {
              if (value!.isEmpty && value != null) {
                return validatormsg;
              }
            },
            decoration: InputDecoration(
              labelText: hinttxt,
              hintText: hinttxt,
              helperText: " ",
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Ink(
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                        side: BorderSide(
                      color: COLOR_DARK_GREY,
                    )),
                  ),
                  child: IconButton(
                      onPressed: () {
                        txtController.clear();
                      },
                      icon: const Icon(Icons.close)),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
