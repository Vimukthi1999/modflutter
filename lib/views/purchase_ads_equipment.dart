import 'package:flutter/material.dart';

import '../res/widgets/app_custom_text_styles.dart';
import '../res/widgets/app_txtfiled_decoration.dart';

class PurchaseAdsEquipment extends StatefulWidget {
  const PurchaseAdsEquipment({Key? key}) : super(key: key);

  @override
  State<PurchaseAdsEquipment> createState() => _PurchaseAdsEquipmentState();
}

class _PurchaseAdsEquipmentState extends State<PurchaseAdsEquipment> {
  // variables
  final TextEditingController _controllerMobileNo = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

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
              Text('Purchase Adavertisment Equipment',
                  style: Theme.of(context).textTheme.headline3),
              Text('Plase sign in to enter in to app',
                  style: Theme.of(context).textTheme.bodyText2),
              SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    appfReqTxt('other (Equip./Feed/Etc) category'),
                    customDropDowns('selete location', () {}),
                    appfTxt('Item Descripton'),
                    TextFormField(
                      controller: _controllerMobileNo,
                      // style: Theme.of(context).textTheme.headline6,
                      decoration: appTxtfiledDecoration('item description'),
                      keyboardType: TextInputType.text,
                      maxLines: 2,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "*";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (val) {
                        // mobileNo = val!;
                      },
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              appfTxt('Unit'),
                              TextFormField(
                                controller: _controllerMobileNo,
                                // style: Theme.of(context).textTheme.headline6,
                                decoration: appTxtfiledDecoration('unit'),
                                keyboardType: TextInputType.text,

                                validator: (text) {
                                  // validate
                                  if (text!.isEmpty) {
                                    return "*";
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (val) {
                                  // mobileNo = val!;
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
                              appfTxt('price'),
                              TextFormField(
                                controller: _controllerMobileNo,
                                // style: Theme.of(context).textTheme.headline6,
                                decoration: appTxtfiledDecoration('price'),
                                keyboardType: TextInputType.text,
                                validator: (text) {
                                  // validate
                                  if (text!.isEmpty) {
                                    return "*";
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (val) {
                                  // mobileNo = val!;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              appfTxt('Brand Name'),
                              TextFormField(
                                controller: _controllerMobileNo,
                                // style: Theme.of(context).textTheme.headline6,
                                decoration: appTxtfiledDecoration('brand name'),
                                keyboardType: TextInputType.text,

                                validator: (text) {
                                  // validate
                                  if (text!.isEmpty) {
                                    return "*";
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (val) {
                                  // mobileNo = val!;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              appfTxt('No of Units'),
                              TextFormField(
                                controller: _controllerMobileNo,
                                // style: Theme.of(context).textTheme.headline6,
                                decoration:
                                    appTxtfiledDecoration('no of units'),
                                keyboardType: TextInputType.text,
                                validator: (text) {
                                  // validate
                                  if (text!.isEmpty) {
                                    return "*";
                                  }
                                  return null;
                                },
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (val) {
                                  // mobileNo = val!;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    appfTxt('Additional Infomation'),
                    TextFormField(
                      controller: _controllerMobileNo,
                      // style: Theme.of(context).textTheme.headline6,
                      decoration:
                          appTxtfiledDecoration('additional infomation'),
                      keyboardType: TextInputType.text,
                      maxLines: 3,
                      validator: (text) {
                        // validate
                        if (text!.isEmpty) {
                          return "*";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (val) {
                        // mobileNo = val!;
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
