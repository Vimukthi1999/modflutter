import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../res/widgets/app_custom_text_styles.dart';

class MyAdvertisementScreen extends StatefulWidget {
  const MyAdvertisementScreen({Key? key}) : super(key: key);

  @override
  State<MyAdvertisementScreen> createState() => _MyAdvertisementScreenState();
}

class _MyAdvertisementScreenState extends State<MyAdvertisementScreen> {
  // variables
  String createselectedFromDate = '-select date-',
      createselectedToDate = '-select date-';
  String expiredselectedFromDate = '-select date-',
      expiredselectedToDate = '-select date-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).pushNamed(AppRouteName.home);
      //   },
      //   child: const Icon(Icons.add),
      // ),
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
              Text('My Advertisement',
                  style: Theme.of(context).textTheme.headline3),
              Text('Plase sign in to enter in to app',
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfReqTxt('Product or Service'),
                  customDropDowns('- please select -', () {}),
                  appfReqTxt('Approval Status'),
                  customDropDowns('- please select -', () {}),
                  appfReqTxt('Active Status'),
                  customDropDowns('- please select -', () {}),
                  appfTxt('Create'),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appfTxt('From'),
                            customDatePicker(createselectedFromDate, 1),
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
                            customDatePicker(createselectedToDate, 2),
                          ],
                        ),
                      ),
                    ],
                  ),
                  appfTxt('Expired'),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appfTxt('From'),
                            customDatePicker(expiredselectedFromDate, 3),
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
                            customDatePicker(expiredselectedToDate, 4),
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

  // use for get create from date
  void createfromDate() async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickeddate != null) {
      setState(() {
        createselectedFromDate = DateFormat('dd/MM/yyyy').format(pickeddate);
      });
    }
  }

  // use for get create to date
  void createtoDate() async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickeddate != null) {
      setState(() {
        createselectedToDate = DateFormat('yyyy/MM/dd').format(pickeddate);
      });
    }
  }

  // use for get expired from date
  void expiredfromDate() async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickeddate != null) {
      setState(() {
        expiredselectedFromDate = DateFormat('dd/MM/yyyy').format(pickeddate);
      });
    }
  }

  // use for get expired from date
  void expiredtoDate() async {
    DateTime initDate = DateTime.now();
    final DateTime? pickeddate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickeddate != null) {
      setState(() {
        expiredselectedToDate = DateFormat('dd/MM/yyyy').format(pickeddate);
      });
    }
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

  Widget customDatePicker(String dd, int which) {
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
              switch (which) {
                case 1:
                  createfromDate();
                  break;
                case 2:
                  createtoDate();
                  break;

                case 3:
                  expiredfromDate();
                  break;
                case 4:
                  expiredtoDate();

                  break;
                default:
              }
            },
          ),
        ],
      ),
    );
  }
}
