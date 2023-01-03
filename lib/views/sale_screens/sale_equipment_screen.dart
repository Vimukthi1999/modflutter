import 'package:flutter/material.dart';

import '../../res/widgets/app_custom_text_styles.dart';
import '../../res/widgets/app_drop_down.dart';
import '../../res/widgets/app_txtfiled_decoration.dart';

class SaleEquipmentScreen extends StatefulWidget {
  const SaleEquipmentScreen({Key? key}) : super(key: key);

  @override
  State<SaleEquipmentScreen> createState() => _SaleEquipmentScreenState();
}

class _SaleEquipmentScreenState extends State<SaleEquipmentScreen> {

  //------------------------------ variables --------------------------------------------------
  final TextEditingController _controllerAdvTitle = TextEditingController();
  final TextEditingController _controllerBrandName = TextEditingController();
  final TextEditingController _controllerItemDes = TextEditingController();
  final TextEditingController _controllerUnit = TextEditingController();
  final TextEditingController _controllerNoOfUnit = TextEditingController();
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
        title: appBarTxt('Sale Advertisement Equipment'),
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
                  const SizedBox(width: 10,),
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
              const SizedBox(height: 10,),
              /// other category
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfReqTxt('Other(Equip/Feed/Etc) Category'),
                  customDropDowns('- please select -', (){})
                ],
              ),
              const SizedBox(height: 10,),
              /// brand name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfReqTxt('Brand Name'),
                  TextFormField(
                    controller: _controllerBrandName,
                    decoration: appTxtfiledDecoration('brand name'),
                    onSaved: (value) {
                    },
                  )
                ],
              ),
              const SizedBox(height: 10,),
              /// item description & unit
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('Item Description'),
                      TextFormField(
                        controller: _controllerItemDes,
                        decoration: appTxtfiledDecoration('item description'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('Unit'),
                      TextFormField(
                        controller: _controllerUnit,
                        decoration: appTxtfiledDecoration('unit'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 10,),
              /// no of units & unit price
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('No of Units'),
                      TextFormField(
                        controller: _controllerNoOfUnit,
                        decoration: appTxtfiledDecoration('no of units'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Unit Price(Rs)'),
                      TextFormField(
                        controller: _controllerPrice,
                        decoration: appTxtfiledDecoration('unit price(Rs)'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 10,),
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
