import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../res/widgets/app_custom_text_styles.dart';


class MyAiBookingScreen extends StatefulWidget {
  const MyAiBookingScreen({Key? key}) : super(key: key);

  @override
  State<MyAiBookingScreen> createState() => _MyAiBookingScreenState();
}

class _MyAiBookingScreenState extends State<MyAiBookingScreen> {
  // variables
  DateTime? selectedFromDate, selectedToDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // fromDate();
          setState(() {});
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
              Text('My AI Booking',
                  style: Theme.of(context).textTheme.headline3),
              Text('Plase sign in to enter in to app',
                  style: Theme.of(context).textTheme.bodyText2),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfTxt('Booking Status'),
                  customDropDowns('selete booking status', () {}),

                  // SizedBox(height: 20),
                  // IconButton(onPressed: () {}, icon: Icon(Icons.search))

                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          appfTxt('From'),
                          customDatePicker(fromDate, getFromDateText),
                        ],
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          appfTxt('To'),
                          customDatePicker(toDate, getToDateText),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // use for get from date
  Future<void> fromDate(BuildContext context) async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: selectedFromDate ?? initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    // if (pickeddate != null) {
    //   setState((){
    //     selectedFromDate = DateFormat('dd/MM/yyyy').format(pickeddate);
    //     print(selectedFromDate);
    //   });
    // }
    if (pickeddate == null) return;

    setState(() => selectedFromDate = pickeddate);
  }
// get text of select date button
  String getFromDateText() {
    if (selectedFromDate == null) {
      return 'Select Date';
    } else {
      return DateFormat('dd/MM/yyyy').format(selectedFromDate!);
    }
  }

  // use for get to date
  Future<void> toDate(BuildContext context) async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: selectedToDate ?? initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (pickeddate == null) return;

    setState(() => selectedToDate = pickeddate);
    // if (pickeddate != null) {
    //   setState((){
    //     selectedToDate = '${pickeddate.year}-${pickeddate.month}-${pickeddate.day}';
    //     print(selectedToDate);
    //   });
    // }
  }
  // get text of select date button
  String getToDateText() {
    if (selectedToDate == null) {
      return 'Select Date';
    } else {
      return DateFormat('dd/MM/yyyy').format(selectedToDate!);
    }
  }

  Widget customDatePicker(Function functionDropDown, Function functionText) {
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
              child: Text(functionText()),
            ),
            onTap: () {
              // datePickFunction();
              // fromDate();

            },
          ),
          IconButton(
            icon: const Icon(Icons.calendar_today, color: Colors.black),
            tooltip: 'Tap to open date picker',
            onPressed: () {
              // datePickFunction();
              // fromDate();
              // setState(() {
              setState(() {
                functionDropDown;
              });
              // });
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
