import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../res/widgets/app_txtfiled_decoration.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // variables
  String? otp;

  String? optNo1, optNo2, optNo3, optNo4, optNo5, optNo6;

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        // log(otp!);

        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();

          otp = optNo1! + optNo2! + optNo3! + optNo4! + optNo5! + optNo6!;
          log(otp!);
        } else {}
      }),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Verification Code',
                  style: Theme.of(context).textTheme.headline4),
              Text('We have sent the code verification to',
                  style: Theme.of(context).textTheme.bodyText2),
              Text('+99*******1234',
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Row(
                  children: [
                    /// 1st number
                    Expanded(
                      child: TextFormField(
                        controller: _controller1,
                        style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('0'),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
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
                          optNo1 = val!;
                        },
                      ),
                    ),
                    const SizedBox(width: 5),

                    /// 2nd number
                    Expanded(
                      child: TextFormField(
                        controller: _controller2,
                        style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('0'),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
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
                          optNo2 = val!;
                        },
                      ),
                    ),

                    const SizedBox(width: 5),

                    /// 3rd number
                    Expanded(
                      child: TextFormField(
                        controller: _controller3,
                        style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('0'),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
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
                          optNo3 = val!;
                        },
                      ),
                    ),

                    const SizedBox(width: 5),

                    /// 4th number
                    Expanded(
                      child: 
                      TextFormField(
                        controller: _controller4,
                        style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('0'),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
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
                          optNo4 = val!;
                        },
                      ),
                    ),

                    const SizedBox(width: 5),

                    /// 5th number
                    Expanded(
                      child: TextFormField(
                        controller: _controller5,
                        style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('0'),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
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
                          optNo5 = val!;
                        },
                      ),
                    ),

                    const SizedBox(width: 5),

                    /// 6th number
                    Expanded(
                      child: TextFormField(
                        controller: _controller6,
                        style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('0'),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
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
                          optNo6 = val!;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(height: 30, width: 40, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
