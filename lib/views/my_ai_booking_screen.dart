
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
  // DateTime? selectedFromDate, selectedToDate;
  String selectedFromDate = '-select date-', selectedToDate = '-select date-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // fromDate();

          // setState(() {});
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
              const SizedBox(height: 30),
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
                            customDatePicker(selectedFromDate, 1),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appfTxt('To'),
                            // customDatePicker(toDate),
                            customDatePicker(selectedToDate, 2),
                          ],
                        ),
                      ),
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
  void fromDate() async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickeddate != null) {
      setState(() {
        selectedFromDate = DateFormat('dd/MM/yyyy').format(pickeddate);
      });
    }
  }

  // use for get to date
  void toDate() async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickeddate != null) {
      setState(() {
        selectedToDate = DateFormat('yyyy/MM/dd').format(pickeddate);
      });
    }
  }

  Widget customDatePicker(String dd, int which) {
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
              switch (which) {
                case 1:
                  fromDate();
                  break;
                case 2:
                  toDate();

                  break;
                default:
              }
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
