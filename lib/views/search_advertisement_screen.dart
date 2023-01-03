import 'package:flutter/material.dart';

import '../res/widgets/app_custom_text_styles.dart';
import '../res/widgets/app_drop_down.dart';
import '../res/widgets/app_txtfiled_decoration.dart';

class SearchAdvertisementScreen extends StatefulWidget {
  const SearchAdvertisementScreen({Key? key}) : super(key: key);

  @override
  State<SearchAdvertisementScreen> createState() => _SearchAdvertisementScreenState();
}

class _SearchAdvertisementScreenState extends State<SearchAdvertisementScreen> {

  //------------------------------ variables --------------------------------------------------
  final TextEditingController _controllerAdvTitle = TextEditingController();

  //------------------------------ variables --------------------------------------------------

  @override
  Widget build(BuildContext context) {

    double mobWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: appBarTxt('Search Advertisement'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /// province & district
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('Province'),
                      customDropDowns('seleted item name', (){})
                    ],
                  )),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfTxt('District'),
                      customDropDowns('seleted item name', (){})
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 10,),
              /// product & advert type
              Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Product or Service'),
                      customDropDowns('seleted item name', (){})
                    ],
                  )),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appfReqTxt('Advert Type'),
                      customDropDowns('seleted item name', (){})
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 10,),
              /// advertisement title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfTxt('Advertisement Title'),
                  TextFormField(
                    controller: _controllerAdvTitle,
                    decoration: appTxtfiledDecoration('Advertisement Title'),
                    onSaved: (value) {
                    },
                  )
                ],
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: mobWidth,
                child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Submit')
                ),
              ),
              const SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: mobWidth,
                        color: Colors.amber,
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }


}