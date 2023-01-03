import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          profileView(context);
        },
        child: const Icon(Icons.add),
      ),
      // body: Container(
      //   child: Center(child: buildImage()),
      // ),
    );
  }

  Future<dynamic> profileView(BuildContext context) {
    String regNo = 'USR00022';
    return showModalBottomSheet(
        isDismissible: true,
        // isScrollControlled: true,
        enableDrag: true,
        backgroundColor: Colors.amberAccent,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        )),
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    buildImage(),
                    const Spacer(),
                    SelectableText(
                      regNo,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    IconButton(
                        onPressed: () {
                          final value = ClipboardData(text: regNo);
                          Clipboard.setData(value);
                        },
                        icon: const Icon(Icons.copy))
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  'Dasun Sandaru',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [Text('981690370v  |  Male')],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Icon(Icons.email),
                    SizedBox(width: 5),
                    Text('dasunsandaru98@gmail.com')
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.phone),
                    SizedBox(width: 5),
                    Text('076 7959732')
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.language_outlined),
                    SizedBox(width: 5),
                    Text('English')
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.location_city_sharp),
                    SizedBox(width: 5),
                    Text('No 67,Koggala,Habaraduwa')
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('Edit Profile')),
                )
              ],
            ),
          );
        });
  }

  Widget buildImage() {
    
    // return ClipOval(
    //   child: Material(
    //     color: Colors.transparent,
    //     child: Ink.image(
    //       image: image,
    //       fit: BoxFit.cover,
    //       width: 100,
    //       height: 100,
    //       child: InkWell(onTap: () {}),
    //     ),
    //   ),
    // );

    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: const DecorationImage(
          image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
          color: Colors.red,
          width: 4.0,
        ),
      ),
    );
  }
}
