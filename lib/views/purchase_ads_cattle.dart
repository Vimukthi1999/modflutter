import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../res/widgets/app_custom_text_styles.dart';
import '../res/widgets/app_txtfiled_decoration.dart';

class PurchaseAdsCattle extends StatefulWidget {
  const PurchaseAdsCattle({Key? key}) : super(key: key);

  @override
  State<PurchaseAdsCattle> createState() => _PurchaseAdsCattleState();
}

class _PurchaseAdsCattleState extends State<PurchaseAdsCattle> {
  // variables

  final TextEditingController _controllerAdsTitle = TextEditingController();
  final TextEditingController _controllerNoofCattle = TextEditingController();
  final TextEditingController _controllerAddressLine1 = TextEditingController();

  // form kry
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
              Text('Purchase Advertisement Cattle',
                  style: Theme.of(context).textTheme.headline3),
              Text('Plase sign up to enter in to app',
                  style: Theme.of(context).textTheme.bodyText2),
              SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    appfReqTxt('Advert Duration'),
                    customDropDowns('advert duration', () {}),
                    appfReqTxt('Advertisement Title'),
                    TextFormField(
                      controller: _controllerAdsTitle,
                      decoration: appTxtfiledDecoration('advertisement title'),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      maxLines: 2,
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
                    appfReqTxt('Breed'),
                    customDropDowns('select breed', () {}),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              appfReqTxt('No of Cattle'),
                              TextFormField(
                                controller: _controllerNoofCattle,
                                decoration:
                                    appTxtfiledDecoration('no of cattle'),
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
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
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              appfReqTxt('Gender'),
                              customDropDowns('select gender', () {}),
                            ],
                          ),
                        ),
                      ],
                    ),
                    appfTxt('Additional Information'),
                    TextFormField(
                      controller: _controllerAdsTitle,
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
                    SizedBox(height: 20),
                    appClickbleTxt(
                        'Do you want to add another animal ? ', 'Yes', () {}),
                  ],
                ),
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
