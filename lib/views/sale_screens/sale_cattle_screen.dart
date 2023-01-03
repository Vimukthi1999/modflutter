import 'package:flutter/material.dart';

import '../../res/widgets/app_custom_text_styles.dart';
import '../../res/widgets/app_drop_down.dart';
import '../../res/widgets/app_txtfiled_decoration.dart';

class SaleCattleScreen extends StatefulWidget {
  const SaleCattleScreen({Key? key}) : super(key: key);

  @override
  State<SaleCattleScreen> createState() => _SaleCattleScreenState();
}

class _SaleCattleScreenState extends State<SaleCattleScreen> {

  //------------------------------ variables --------------------------------------------------
  final TextEditingController _controllerAdvTitle = TextEditingController();
  final TextEditingController _controllerNumberOfCattle = TextEditingController();
  final TextEditingController _controllerPrice = TextEditingController();
  final TextEditingController _controllerWeight = TextEditingController();
  final TextEditingController _controllerAgeYear = TextEditingController();
  final TextEditingController _controllerAgeMonth = TextEditingController();
  final TextEditingController _controllerAdditionalInfo = TextEditingController();
  //------------------------------ variables --------------------------------------------------


  @override
  Widget build(BuildContext context) {
    double mobWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: appBarTxt('Sale Advertisement Cattle'),
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
              /// breed & gender
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Breed'),
                      customDropDowns('- please select -', (){})
                    ],
                  )),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Gender'),
                      customDropDowns('- please select -', (){})
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 10,),
              /// no of cattle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfReqTxt('No of Cattle'),
                  TextFormField(
                    controller: _controllerNumberOfCattle,
                    decoration: appTxtfiledDecoration('no of cattle'),
                    onSaved: (value) {
                    },
                  )
                ],
              ),
              const SizedBox(height: 10,),
              /// price & weight
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('Price per Unit(Rs)'),
                      TextFormField(
                        controller: _controllerPrice,
                        decoration: appTxtfiledDecoration('price per unit(rs)'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('Weight(Kg)'),
                      TextFormField(
                        controller: _controllerWeight,
                        decoration: appTxtfiledDecoration('weight(Kg)'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 10,),
              /// age(years) & age(months)
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('Age(Years)'),
                      TextFormField(
                        controller: _controllerAgeYear,
                        decoration: appTxtfiledDecoration('age(years)'),
                        onSaved: (value) {
                        },
                      )
                    ],
                  )),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('Age (Months)'),
                      TextFormField(
                        controller: _controllerAgeMonth,
                        decoration: appTxtfiledDecoration('age(months)'),
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
