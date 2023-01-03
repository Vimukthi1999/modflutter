import 'package:flutter/material.dart';

import '../../res/widgets/app_custom_text_styles.dart';
import '../../res/widgets/app_txtfiled_decoration.dart';

class AiCancellationScreen extends StatefulWidget {
  const AiCancellationScreen({Key? key}) : super(key: key);

  @override
  State<AiCancellationScreen> createState() => _AiCancellationScreenState();
}

class _AiCancellationScreenState extends State<AiCancellationScreen> {

  //------------------------------ variables --------------------------------------------------
  final TextEditingController _controllerAdditionalInfo = TextEditingController();

  //------------------------------ variables --------------------------------------------------

  @override
  Widget build(BuildContext context) {
    double mobWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: appBarTxt('AI Cancellation'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// body of content
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Booking No')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('AI Technician')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Farmer')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Name of the Cow')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Repeated Times')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Time of Observing Heat')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Last Calving Date')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Preferred Semen')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Age (Years)')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: contentTxt('Time Required')),
                        Expanded(
                            flex: 1,
                            child: Center(child: contentTxt(':'))),
                        Expanded(
                            flex: 5,
                            child: contentTxt('0000000000'))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              /// additional information
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfReqTxt('Additional Information'),
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
              SizedBox(
                width: mobWidth,
                child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Cancel')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
