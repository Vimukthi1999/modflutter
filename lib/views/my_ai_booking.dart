import 'dart:developer';

import 'package:flutter/material.dart';

import '../res/widgets/app_custom_text_styles.dart';


class MyAiBooking extends StatefulWidget {
  const MyAiBooking({Key? key}) : super(key: key);

  @override
  State<MyAiBooking> createState() => _MyAiBookingState();
}

class _MyAiBookingState extends State<MyAiBooking> {
  // variables
  String? pickdate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fromDate();
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
                          customDatePicker(pickdate),
                        ],
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      // Expanded(
                      //     child: Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     appfTxt('To'),
                      //     customDatePicker(fromDate),
                      //   ],
                      // )),
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
  Future<String?> fromDate() async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickeddate != null) {
      pickdate = '${pickeddate.year}-${pickeddate.month}-${pickeddate.day}';
      log(pickdate.toString());
      return pickdate;
    }
    return null;
  }

  Widget customDatePicker(String? date) {
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
              child: Text(
                  date ??
                      '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
                  // fromDate();
                  textAlign: TextAlign.right,
                  style: const TextStyle(color: Colors.black, fontSize: 15)),
            ),
            onTap: () {
              // datePickFunction();
              // fromDate();
              // setState(() {

              // });
            },
          ),
          IconButton(
            icon: const Icon(Icons.calendar_today, color: Colors.black),
            tooltip: 'Tap to open date picker',
            onPressed: () {
              // datePickFunction();
              // fromDate();
              // setState(() {

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
