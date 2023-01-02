import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modflutterapp/res/image_path/app_imgpaths.dart';
import 'package:modflutterapp/res/widgets/app_drawer.dart';

import '../res/widgets/app_custom_text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late ScrollController _scrollController;
  Color _textColor = Colors.white;
  static const kExpandedHeight = 200.0;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.blue;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> caerButtonList = [
      SizedBox(height: 10,),
      adCardView(context, '', AppImgPath.myad_main, 'My Advertisement'),
      adCardView(context, '', AppImgPath.search_main, 'Search Advertisement'),
      adCardView(context, '', AppImgPath.purchase_main, 'Purchase Advertisement'),
      adCardView(context, '', AppImgPath.sell_main, 'Sales Advertisement'),
      adCardView(context, '', AppImgPath.aboutus_main, 'About Us'),
      adCardView(context, '', AppImgPath.Ai_service_main, 'AI Service'),
    ];

    return Scaffold(
      endDrawer: appDrawer(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [

          SliverAppBar(
            title: const Text('App Bar Title'),
            leading: IconButton(
                onPressed: (){},
                icon: Icon(Icons.g_translate_sharp)),

            shape: !_isSliverAppBarExpanded ?  RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0), ), ) :
            null,
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: kExpandedHeight,
            // show and hide FlexibleSpaceBar title
            flexibleSpace: _isSliverAppBarExpanded
                ? null
                : FlexibleSpaceBar(
              // centerTitle: true,
              background: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Beach',
                    textScaleFactor: 1,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),

                ],
              ),
            ),
          ),

          // SliverToBoxAdapter(
          //   child: adCardView('', AppImgPath.search_main, '-----------')
          //
          // ),

          SliverMasonryGrid.count(
              childCount: 7,
              crossAxisCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: caerButtonList[index]
                      )),
                );
              }
          ),
        ],
      ),
    );
  }

  Widget adCardView(BuildContext context, String routePath, String imgPath, String titleTxt) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(routePath);
      },
      child: Card(
          elevation: 3,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            height: 180,
            child: Column(
              children: [
                SizedBox(
                  // width: 200,
                  height: 150,
                  child:
                  Center(
                    child:
                    Center(
                      child: Image.asset(imgPath,
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),
                appHomeCardTxt(titleTxt)
              ],
            ),
          )),
    );
  }
}
