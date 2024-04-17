import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Home extends StatelessWidget{
  const Home ({super.key});

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
              crossAxisCount: MediaQuery.of(context).size.width < 600 ?  2 : 4,
              padding: EdgeInsets.all(MediaQuery.of(context).size.width < 600 ? 20.0 : 15.0),
              // crossAxisCount: 2,
              // padding: EdgeInsets.all(15.0),
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
          // const SizedBox(height: 20),

          Container (
            // padding: const EdgeInsets.only(top: 455, left: 20),
            padding: EdgeInsets.only(
              top: (MediaQuery.of(context).size.height  < 600 ? 255: 460.0),
              // top: MediaQuery.of(context).size.height * 0.51,
              left: 20
            ),
            child: Text ('Other Service',
              style: GoogleFonts.lato (
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w800
              ),
            ),
          ),

          const SizedBox(height: 10),

          GridB(),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget{
  final String title;
  final IconData icon;

  const GridItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12),

      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff2475ee)),
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xff2475ee),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon ,size: 40, color: Colors.white),
          Text(title, style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          ),
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
      "subtitle": "Book your next stay",
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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double topPadding = screenHeight * 0.6;
    double leftRightPadding = screenWidth * 0.03; // 5% of screen width
    return GridView.builder(
      padding: EdgeInsets.only(
        top: topPadding,
        left: leftRightPadding,
        right: leftRightPadding,
      ),
      // padding: EdgeInsets.only(top: 530,left: 10, right: 10),
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
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
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