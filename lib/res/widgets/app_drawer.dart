import 'package:flutter/material.dart';
import '../../utils/route/app_route_names.dart';
import '../image_path/app_imgpaths.dart';
import 'app_custom_text_styles.dart';

Widget appDrawer(BuildContext context) {
  return Drawer(
    width: MediaQuery.of(context).size.width-50,
    child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
              child:ConstrainedBox(
                constraints: constraints.copyWith(
                    minHeight: constraints.maxHeight,
                    maxHeight: double.infinity
                ),
                child: IntrinsicHeight(
                  child: SafeArea(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          color: Colors.amber,
                          child: Center(
                            child: SizedBox(
                                width: 150,
                                child: Image.asset(AppImgPath.mod_splash)),
                          ),
                        ),

                        Column(
                          children: [
                            Card(
                              child: ListTile(
                                leading: Image.asset(AppImgPath.home),
                                title: drawerTitleTxt("Home"),
                                onTap: (){
                                  Navigator.of(context).pushNamed(AppRouteName.home);
                                },
                              ),
                            ),
                            Card(
                              child: ListTile(
                                title: drawerTitleTxt("Search Advertisemet"),
                                leading: Image.asset(AppImgPath.search),
                                onTap: (){
                                  Navigator.of(context).pushNamed(AppRouteName.searchads);
                                },
                              ),
                            ),
                            Card(
                              child: ListTile(
                                title: drawerTitleTxt("My Advertisemet"),
                                leading: Image.asset(AppImgPath.myad),
                                onTap: (){
                                  Navigator.of(context).pushNamed(AppRouteName.myads);
                                },
                              ),
                            ),
                            Card(
                              child: ExpansionTile(
                                title: drawerTitleTxt("Sales Advertisement"),
                                leading: Image.asset(AppImgPath.sale), //add icon
                                childrenPadding: const EdgeInsets.only(left:60), //children padding
                                children: [
                                  ListTile(
                                    title: drawerTitleTxt("Cattle"),
                                    leading: Image.asset(AppImgPath.cow),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.salsesadsCattle);
                                    },
                                  ),

                                  ListTile(
                                    title: drawerTitleTxt("Silage"),
                                    leading: Image.asset(AppImgPath.silage),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.salsesadsSilage);
                                    },
                                  ),

                                  ListTile(
                                    title: drawerTitleTxt("Fodder"),
                                    leading: Image.asset(AppImgPath.fodder),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.salsesadsFodder);
                                    },
                                  ),

                                  ListTile(
                                    title: drawerTitleTxt("Other(Equip/Feed/Etc."),
                                    leading: Image.asset(AppImgPath.equ),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.salsesadsOther);
                                    },
                                  ),

                                  //more child menu
                                ],
                              ),
                            ),
                            Card(
                              child: ExpansionTile(
                                title: drawerTitleTxt("Purchase Advertisement"),
                                leading: Image.asset(AppImgPath.buy),//add icon
                                childrenPadding: const EdgeInsets.only(left:60), //children padding
                                children: [
                                  ListTile(
                                    title: drawerTitleTxt("Cattle"),
                                    leading: Image.asset(AppImgPath.cow),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.purchaseadsCattle);
                                    },
                                  ),

                                  ListTile(
                                    title: drawerTitleTxt("Silage"),
                                    leading: Image.asset(AppImgPath.silage),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.purchaseadsSilage);
                                    },
                                  ),

                                  ListTile(
                                    title: drawerTitleTxt("Fodder"),
                                    leading: Image.asset(AppImgPath.fodder),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.purchaseadsFodder);
                                    },
                                  ),

                                  ListTile(
                                    title: drawerTitleTxt("Other(Equip/Feed/Etc."),
                                    leading: Image.asset(AppImgPath.equ),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.purchaseadsOther);
                                    },
                                  ),

                                  //more child menu
                                ],
                              ),
                            ),
                            Card(
                              child: ExpansionTile(
                                title: drawerTitleTxt("Ai Service"),
                                leading: Image.asset(AppImgPath.ai_adv), //add icon
                                childrenPadding: const EdgeInsets.only(left:60), //children padding
                                children: [
                                  ListTile(
                                    title: drawerTitleTxt("Search AI"),
                                    leading: Image.asset(AppImgPath.search_ai),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.searchai);
                                    },
                                  ),

                                  ListTile(
                                    title: drawerTitleTxt("My AI Bookings"),
                                    leading: Image.asset(AppImgPath.my_ai),
                                    onTap: (){
                                      Navigator.of(context).pushNamed(AppRouteName.myaibooking);
                                    },
                                  ),

                                  //more child menu
                                ],
                              ),
                            ),
                            Card(
                              child: ListTile(
                                title: drawerTitleTxt("About Us"),
                                leading: Image.asset(AppImgPath.about),
                                onTap: (){
                                  Navigator.of(context).pushNamed(AppRouteName.aboutus);
                                },
                              ),
                            ),
                            Card(
                              child: ListTile(
                                title: drawerTitleTxt("Log Out"),
                                leading: Image.asset(AppImgPath.logout),
                                onTap: (){
                                  //action on press
                                },
                              ),
                            ),
                          ],
                        ),

                        Expanded(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  drawerFooterTxt('1.12.0'),
                                  drawerFooterTxt('Developed by Cyber Concept'),
                                  const SizedBox(height: 10,)
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
          );
        }
    ),
  );
}