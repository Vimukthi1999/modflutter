import 'package:flutter/material.dart';

import '../res/widgets/app_custom_text_styles.dart';

class SearchAiScreen extends StatefulWidget {
  const SearchAiScreen({Key? key}) : super(key: key);

  @override
  State<SearchAiScreen> createState() => _SearchAiScreenState();
}

class _SearchAiScreenState extends State<SearchAiScreen> {
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
              Text('Search AI', style: Theme.of(context).textTheme.headline3),
              Text('Plase sign in to enter in to app',
                  style: Theme.of(context).textTheme.bodyText2),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appfTxt('Location'),
                  customDropDowns('selete location', () {})

                  // SizedBox(height: 20),
                  // IconButton(onPressed: () {}, icon: Icon(Icons.search))
                ],
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
              icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}
