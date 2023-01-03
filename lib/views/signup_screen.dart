import 'dart:developer';

import 'package:flutter/material.dart';

import '../res/widgets/app_custom_text_styles.dart';
import '../res/widgets/app_txtfiled_decoration.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // variables
  final TextEditingController _controllerContactPerson =
      TextEditingController();
  final TextEditingController _controllerShortName = TextEditingController();
  final TextEditingController _controllerIdNo = TextEditingController();
  final TextEditingController _controllerAddressLine1 = TextEditingController();
  final TextEditingController _controllerAddressLine2 = TextEditingController();
  final TextEditingController _controllerMobilNO = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();

  // form kry
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // user inputs
  late String empNo;
  String? contactPersonName;
  late String shortName;
  late String idNo;
  late String addressLine1, addressLine2;
  late String mobileNo;
  String? email;

  // dp selected values
  late String gender;
  late String idType;
  late String mainlineofBussiness;
  late String language;

  bool valuesecond = false;

  List<String> temlist = [
    'option 1',
    'option 2',
    'option 3',
    'option 1',
    'option 2',
    'option 3',
    'option 1',
    'option 2',
    'option 3',
    'option 2',
    'option 21',
    'option 91',
    'option 22',
    'option 23',
    'option 51',
    'option 82',
    'option 03'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign Up', style: Theme.of(context).textTheme.headline3),
              Text('Plase sign up to enter in to app',
                  style: Theme.of(context).textTheme.bodyText2),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    appfReqTxt('Registration Name'),
                    TextFormField(
                      controller: _controllerShortName,
                      decoration: appTxtfiledDecoration('registration name'),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "Registration Name Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        empNo = value!;
                      },
                    ),
                    appfTxt('Contact Person'),
                    TextFormField(
                      controller: _controllerContactPerson,
                      decoration: appTxtfiledDecoration('contact person'),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "Employee Number Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        empNo = value!;
                      },
                    ),
                    appfReqTxt('Short Name'),
                    TextFormField(
                      controller: _controllerShortName,
                      decoration: appTxtfiledDecoration('short name'),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "short name Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        empNo = value!;
                      },
                    ),
                    appfReqTxt('Gender'),
                    customDropDowns('select gender', () {}),
                    appfReqTxt('Id Type'),
                    customDropDowns('select id type', () {}),
                    appfReqTxt('Id No'),
                    TextFormField(
                      controller: _controllerIdNo,
                      decoration: appTxtfiledDecoration('id number'),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "Employee Number Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        empNo = value!;
                      },
                    ),
                    appfReqTxt('Main Line of business'),
                    customDropDowns('main line of business', () {}),
                    appfReqTxt('Address'),
                    TextFormField(
                      controller: _controllerAddressLine1,
                      decoration: appTxtfiledDecoration('address line 1'),
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "Employee Number Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        empNo = value!;
                      },
                    ),
                    appfTxt(''),
                    TextFormField(
                      controller: _controllerAddressLine2,
                      decoration: appTxtfiledDecoration('address line 2'),
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "Employee Number Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        empNo = value!;
                      },
                    ),
                    appfTxt(''),

                    /// province & district
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appfReqTxt('Province'),
                            customDropDowns('seleted item name', () {})
                          ],
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appfReqTxt('District'),
                            customDropDowns('seleted item name', () {})
                          ],
                        )),
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: appfReqTxt('Location'),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.refresh),
                          ),
                        )
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: const Center(child: Text('23.786863')),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: const Center(child: Text('23.786863')),
                          ),
                        ),
                      ],
                    ),

                    appfReqTxt('Mobile No 01' '(This is your UserName)'),
                    TextFormField(
                      controller: _controllerMobilNO,
                      decoration: appTxtfiledDecoration('mobile number'),
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "Employee Number Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        empNo = value!;
                      },
                    ),

                    appfTxt('Email'),
                    TextFormField(
                      controller: _controllerEmail,
                      decoration: appTxtfiledDecoration('email'),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "Employee Number Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        empNo = value!;
                      },
                    ),
                    appfReqTxt('Language'),
                    customDropDowns('language', () {}),
                    const SizedBox(height: 15),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      dense: true,
                      visualDensity: VisualDensity.compact,
                      // secondary: const Icon(Icons.alarm),
                      title: const Text('I agress to the terms of service'),
                      value: valuesecond,
                      onChanged: (value) {
                        setState(() {
                          valuesecond = value!;
                        });
                      },
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

  Widget customDropDowns(String hintTxt, Function function) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(hintTxt),
            ),
          ),
          IconButton(
              onPressed: () {
                function();
              },
              icon: const Icon(Icons.arrow_drop_down_circle))
        ],
      ),
    );
  }

  Future<void> dpWidget() async {
    showModalBottomSheet(
      isDismissible: true,
      // isScrollControlled: true,
      enableDrag: true,
      backgroundColor: Colors.amberAccent,
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      )),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.red,
              height: 30,
              child: Center(
                child: Container(
                  height: 10,
                  width: MediaQuery.of(context).size.height / 4,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: temlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(temlist[index]),
                    onTap: () {
                      log('selete ---> ${temlist[index]}');
                    },
                  );
                },
              ),
            ),
          ],
        );

        // return Container(
        //   color: Colors.red,
        // );
      },
    );
  }
}

// padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
