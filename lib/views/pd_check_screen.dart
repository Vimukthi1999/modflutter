import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modflutterapp/res/widgets/app_row_templete.dart';

import '../res/widgets/app_custom_text_styles.dart';
import '../res/widgets/app_txtfiled_decoration.dart';
import '../utils/route/app_route_names.dart';

class PdCheckScreen extends StatefulWidget {
  const PdCheckScreen({Key? key}) : super(key: key);

  @override
  State<PdCheckScreen> createState() => _PdCheckScreenState();
}

class _PdCheckScreenState extends State<PdCheckScreen> {
  // variables

  String selectedPDDate = '-select date-';
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
              Text('PD Check', style: Theme.of(context).textTheme.headline3),
              Text('Plase sign in to enter in to app',
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppRowtemplete(
                      one: appfReqTxt('Name of the cow'),
                      two: TextFormField(
                        controller: _controllerMobileNo,
                        // style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('name of the cow'),
                        keyboardType: TextInputType.number,
                        validator: (text) {
                          // validate
                          if (text!.isEmpty) {
                            return "*";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          // mobileNo = val!;
                        },
                      ),
                      three: appfTxt('Booking No'),
                      four: TextFormField(
                        controller: _controllerMobileNo,
                        // style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('booking no'),
                        keyboardType: TextInputType.number,
                        validator: (text) {
                          // validate
                          if (text!.isEmpty) {
                            return "*";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          // mobileNo = val!;
                        },
                      ),
                    ),
                    AppRowtemplete(
                      one: appfTxt('Last AI Date & Time'),
                      two: const Text('data'),
                      three: appfTxt('AI Technician'),
                      four: const Text('date'),
                    ),
                    AppRowtemplete(
                      one: appfReqTxt('Vet Code'),
                      two: TextFormField(
                        controller: _controllerMobileNo,
                        // style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('vet code'),
                        keyboardType: TextInputType.number,
                        validator: (text) {
                          // validate
                          if (text!.isEmpty) {
                            return "*";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          // mobileNo = val!;
                        },
                      ),
                      three: appfTxt('PD Date'),
                      four: customDatePicker(selectedPDDate),
                    ),
                    AppRowtemplete(
                      one: appfReqTxt('Pregnancy Status'),
                      two: customDropDowns('select breed', () {}),
                      three: appfReqTxt('Vet Name'),
                      four: TextFormField(
                        controller: _controllerMobileNo,
                        // style: Theme.of(context).textTheme.headline6,
                        decoration: appTxtfiledDecoration('vet name'),
                        keyboardType: TextInputType.number,
                        validator: (text) {
                          // validate
                          if (text!.isEmpty) {
                            return "*";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          // mobileNo = val!;
                        },
                      ),
                    ),
                    appfTxt('Additional Information'),
                    TextFormField(
                      // controller: _controllerAdsTitle,
                      decoration:
                          appTxtfiledDecoration('additional information'),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      maxLines: 3,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "short name Required !";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        // empNo = value!;
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

  // use for get from date
  void pdDate() async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickeddate != null) {
      setState(() {
        selectedPDDate = DateFormat('dd/MM/yyyy').format(pickeddate);
      });
    }
    // if (pickeddate == null) return;

    // setState(() => selectedFromDate = pickeddate);
  }

  Widget customDatePicker(String dd) {
    // fu = toDate();
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(dd),
            ),
            onTap: () {
              // datePickFunction();
              // fromDate();
            },
          ),

          // dt,
          IconButton(
            icon: const Icon(Icons.calendar_today, color: Colors.black),
            tooltip: 'Tap to open date picker',
            onPressed: () {
              pdDate();
            },
          ),
        ],
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
