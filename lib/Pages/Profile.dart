import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});

  @override

  Widget build(BuildContext context){
    return  Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Image.asset('Assets/bgpicture.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(top: 50, left: 20),
              child: Text(
                'Train Service',
                style: GoogleFonts.lato (
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w800
                ),
              ),
            ),
            Container (
              padding: const EdgeInsets.only(top: kToolbarHeight + 36),
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(15.0),
                childAspectRatio: 1.2,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,

                children: const [
                  GridItem(title: 'Train', icon: Icons.train,),
                  GridItem(title: 'Food', icon: Icons.fastfood_outlined,),
                  GridItem(title: 'Ask Disha', icon: Icons.chat),
                  GridItem(title: 'Rooms', icon: Icons.hotel),
                ],
              ),
            ),
            const SizedBox(height: 30),

            Container (
              padding: const EdgeInsets.only(top: 468, left: 20),
              // padding: EdgeInsets.symmetric(
              //   horizontal: MediaQuery.of(context).size.width * 0.05,
              //   vertical: MediaQuery.of(context).size.width * 1.01,),
              child: const Text('Other Service', style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.w500),
              ),
            ),

            const SizedBox(height: 40),

            GridB(),
          ],
        ),
      );
  }
}


class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Flight",
      "subtitle": "Book your next flight",
    },
    {
      "title": "Hotel",
      "subtitle": "Book your stay",
    },
    {
      "title": "Bus",
      "subtitle": "Book your next bus",
    },
    {
      "title": "Tourism",
      "subtitle": "Explore tour option",
    },


  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 530),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 90,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Color(0xff1D1F24)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                // child: Image.network(
                //   "${gridMap.elementAt(index)['image']}",
                //   height: 170,
                //   width: double.infinity,
                //   fit: BoxFit.cover,
                // ),
              ),
              Padding(
              padding: const EdgeInsets.only(left: 25.0),
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                       Text(

                     "${gridMap.elementAt(index)['title']}",
                       style: Theme.of(context).textTheme.subtitle1!.merge(
                       const TextStyle(
                           fontWeight: FontWeight.w700,
                         color: Colors.white,
                         fontSize: 20
                            ),
                          ),
                        ),
                       const SizedBox(height: 8.0),
                       Text(
                       "${gridMap.elementAt(index)['subtitle']}",
                          style: Theme.of(context).textTheme.subtitle2!.merge(
                         TextStyle(
                            fontWeight: FontWeight.w700,
                             color: Colors.grey.shade500,
                             fontSize: 12
                                 ),
                              ),
                            ),
                        const SizedBox(height: 8.0,),
                        // Row(
                        //    children: [
                        //       IconButton(
                        //         onPressed: () {},
                        //            icon: Icon(Icons.ice_skating_outlined,
                        //           ),
                        //         ),
                        //        IconButton(
                        //           onPressed: () {},
                        //            icon: Icon(Icons.ice_skating_outlined
                        //            ),
                        //        ),
                        //    ],
                        // ),
                   ],
                ),
              ),
              ],
          ),
        );
      },
    );
  }
}