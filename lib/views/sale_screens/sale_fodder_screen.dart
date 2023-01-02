import 'package:flutter/material.dart';

import '../../res/widgets/app_custom_text_styles.dart';
import '../../res/widgets/app_drop_down.dart';
import '../../res/widgets/app_txtfiled_decoration.dart';

class SaleFodderScreen extends StatefulWidget {
  const SaleFodderScreen({Key? key}) : super(key: key);

  @override
  State<SaleFodderScreen> createState() => _SaleFodderScreenState();
}

class _SaleFodderScreenState extends State<SaleFodderScreen> {

  //------------------------------ variables --------------------------------------------------
  final TextEditingController _controllerAdvTitle = TextEditingController();
  final TextEditingController _controllerQty = TextEditingController();
  final TextEditingController _controllerPrice = TextEditingController();
  final TextEditingController _controllerAdditionalInfo = TextEditingController();

  bool isHarvested = false;
  bool isChopped = false;
  bool isLoaded = false;
  bool isTransported = false;
  //------------------------------ variables --------------------------------------------------


  @override
  Widget build(BuildContext context) {
    double mobWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: appBarTxt('Sale Advertisement Fodder'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// advert duration & advertisement title
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Advert Duration'),
                      customDropDowns('- please select -', (){})
                    ],
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Advertisement Title'),
                      TextFormField(
                        controller: _controllerAdvTitle,
                        decoration: appTxtfiledDecoration('advertisement title'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                ],
              ),
              SizedBox(height: 10,),
              /// district & DS division
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('District'),
                      customDropDowns('- please select -', (){})
                    ],
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('DV Division'),
                      customDropDowns('- please select -', (){})
                    ],
                  )),
                ],
              ),
              SizedBox(height: 10,),
              /// fodder type & quantity
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Fodder Type'),
                      customDropDowns('- please select -', (){})
                    ],
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Quantity (kg)'),
                      TextFormField(
                        controller: _controllerQty,
                        decoration: appTxtfiledDecoration('quantity (kg)'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                ],
              ),
              SizedBox(height: 10,),
              /// unit price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfTxt('Unit Price (Rs)'),
                  TextFormField(
                    controller: _controllerPrice,
                    decoration: appTxtfiledDecoration('unit price (rs)'),
                    onSaved: (value) {
                    },
                  )
                ],
              ),
              SizedBox(height: 10,),
              /// harvested date & expected date
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Harvested Date'),
                      Container(
                        color: Colors.grey,
                        height: 50,
                      )
                    ],
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('Expected Date'),
                      Container(
                        color: Colors.grey,
                        height: 50,
                      )
                    ],
                  )),
                ],
              ),
              SizedBox(height: 10,),
              /// check boxes
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: isHarvested,
                                onChanged: (value) {
                                  setState(() {
                                    isHarvested = value!;
                                  });
                                },
                              ),
                              appfTxt('Harvested')
                            ],
                          )
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: isChopped,
                                onChanged: (value) {
                                  setState(() {
                                    isChopped = value!;
                                  });
                                },
                              ),
                              appfTxt('Chopped')
                            ],
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: isLoaded,
                                onChanged: (value) {
                                  setState(() {
                                    isLoaded = value!;
                                  });
                                },
                              ),
                              appfTxt('Loaded')
                            ],
                          )
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: isTransported,
                                onChanged: (value) {
                                  setState(() {
                                    isTransported = value!;
                                  });
                                },
                              ),
                              appfTxt('Transported')
                            ],
                          )
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              /// select image
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfTxt('Select Images'),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                    child: Center(child: appfTxt('Select Image'),),
                  )
                ],
              ),
              SizedBox(height: 10,),
              /// additional information
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfTxt('Additional Information'),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    controller: _controllerAdditionalInfo,
                    decoration: appTxtfiledDecoration('additional information'),
                    onSaved: (value) {
                    },
                  )
                ],
              ),
              SizedBox(height: 10,),
              /// link label
              Text.rich(
                TextSpan(
                  text: 'Do you want to add another Feed? ',
                  children: [
                    WidgetSpan(
                      child: InkWell(
                        onTap: (){},
                        child: Text(' Yes',
                          style: TextStyle(color: Colors.amber, fontSize: 18),
                        ),
                      ),)
                  ],
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: mobWidth,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Submit')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
