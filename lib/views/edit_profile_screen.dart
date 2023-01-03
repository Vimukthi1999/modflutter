import 'package:flutter/material.dart';

import '../res/widgets/app_custom_text_styles.dart';
import '../res/widgets/app_txtfiled_decoration.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  // variables
  final TextEditingController _controllerContactPerson =
      TextEditingController();
  final TextEditingController _controllerShortName = TextEditingController();
  final TextEditingController _controllerIdNo = TextEditingController();
  final TextEditingController _controllerAddressLine1 = TextEditingController();
  final TextEditingController _controllerAddressLine2 = TextEditingController();
  final TextEditingController _controllerMobilNO = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Text('Edit Profile',
                  style: Theme.of(context).textTheme.headline3),
              Text('------------------------------',
                  style: Theme.of(context).textTheme.bodyText2),
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
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Id Type'),
                      customDropDowns('select id type', () {}),
                    ],
                  )),
                  const SizedBox(width: 10),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  )),
                ],
              ),
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
                      child: const Center(child: const Text('23.786863')),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Center(child: Text('Show Loacation')))),
                  const SizedBox(width: 10),
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Center(child: Text('Update')))),
                ],
              )
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
}
