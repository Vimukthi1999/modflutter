import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modflutterapp/route/app_route_names.dart';

import '../res/widgets/app_custom_text_styles.dart';
import '../res/widgets/app_txtfiled_decoration.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // variables

  late String mobileNo;
  final TextEditingController _controllerMobileNo = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRouteName.home);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Login', style: Theme.of(context).textTheme.headline3),
              Text('Plase sign in to enter in to app',
                  style: Theme.of(context).textTheme.bodyText2),
              SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    appfReqTxt('Mobile Number'),
                    TextFormField(
                      controller: _controllerMobileNo,
                      style: Theme.of(context).textTheme.headline6,
                      decoration: appTxtfiledDecoration('0'),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "*";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (val) {
                        mobileNo = val!;
                      },
                    ),
                    SizedBox(height: 20),
                    appClickbleTxt(
                        'Dont\'t you have an account ? ', 'Register', () {}),
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
