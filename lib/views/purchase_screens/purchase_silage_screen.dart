import 'package:flutter/material.dart';

import '../../res/widgets/app_custom_text_styles.dart';
import '../../res/widgets/app_drop_down.dart';
import '../../res/widgets/app_txtfiled_decoration.dart';

class PurchaseSilageScreen extends StatefulWidget {
  const PurchaseSilageScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseSilageScreen> createState() => _PurchaseSilageScreenState();
}

class _PurchaseSilageScreenState extends State<PurchaseSilageScreen> {

  //------------------------------ variables --------------------------------------------------
  final TextEditingController _controllerAdvTitle = TextEditingController();
  final TextEditingController _controllerBarrelQty = TextEditingController();
  final TextEditingController _controllerBaleQty = TextEditingController();
  final TextEditingController _controllerBagsQty = TextEditingController();
  final TextEditingController _controllerAdditionalInfo = TextEditingController();

  bool isBarrels = false;
  bool isBale = false;
  bool isBags = false;
  //------------------------------ variables --------------------------------------------------


  @override
  Widget build(BuildContext context) {
    double mobWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: appBarTxt('Purchase Advertisement Silage'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// advert duration
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfReqTxt('Advert Duration'),
                  customDropDowns('- please select -', (){})
                ],
              ),
              const SizedBox(height: 10,),
              /// advertisement title
              Column(
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
              ),
              const SizedBox(height: 10,),
              /// forage type
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfReqTxt('Forage Type'),
                  customDropDowns('- please select -', (){})
                ],
              ),
              const SizedBox(height: 10,),
              /// item details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: appfReqTxt('Package')),
                      const SizedBox(width: 10,),
                      Expanded(child: appfReqTxt('Quantity (kg)')),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: isBarrels,
                                onChanged: (value) {
                                  setState(() {
                                    isBarrels = value!;
                                  });
                                },
                              ),
                              appfTxt('Barrels')
                            ],
                          )
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                          child: TextFormField(
                            style: const TextStyle(fontSize: 13),
                            controller: _controllerBarrelQty,
                            decoration: appTxtfiledDecoration('quantity (kg)'),
                            onSaved: (value) {
                            },
                          )
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: isBale,
                                onChanged: (value) {
                                  setState(() {
                                    isBale = value!;
                                  });
                                },
                              ),
                              appfTxt('Bale')
                            ],
                          )
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                          child: TextFormField(
                            style: const TextStyle(fontSize: 13),
                            controller: _controllerBaleQty,
                            decoration: appTxtfiledDecoration('quantity (kg)'),
                            onSaved: (value) {
                            },
                          )
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                visualDensity: VisualDensity.standard,
                                value: isBags,
                                onChanged: (value) {
                                  setState(() {
                                    isBags = value!;
                                  });
                                },
                              ),
                              appfTxt('Bags')
                            ],
                          )
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                          child: TextFormField(
                            style: const TextStyle(fontSize: 13),
                            controller: _controllerBagsQty,
                            decoration: appTxtfiledDecoration('quantity (kg)'),
                            onSaved: (value) {
                            },
                          )
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
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
              const SizedBox(height: 10,),
              /// link label
              Text.rich(
                TextSpan(
                  text: 'Do you want to add another Feed? ',
                  children: [
                    WidgetSpan(
                      child: InkWell(
                        onTap: (){},
                        child: const Text(' Yes',
                          style: TextStyle(color: Colors.amber, fontSize: 18),
                        ),
                      ),)
                  ],
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: mobWidth,
                child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Submit')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
