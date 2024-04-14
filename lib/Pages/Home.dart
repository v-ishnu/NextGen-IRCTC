import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Home extends StatelessWidget{
  const Home({super.key});

  @override

  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('Assets/Background2.png')
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              titleTextStyle: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.transparent,
              title: const Text('Train Service',
                style: TextStyle(
                    color: Colors.white),
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

            Container(
              padding: const EdgeInsets.only(top: kToolbarHeight + 440),
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(12.0),
                childAspectRatio: 1.2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 15.0,
                children: [
                  serviceButton('Flight','Book your next flight'),
                  serviceButton('Hotel','Book your next stay'),
                  serviceButton('Bus','Book your next bus'),
                  serviceButton('Tourism','Explore tour option'),
                ],
              ),
            )
          ],
        ),
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
          border: Border.all(color: Colors.blue.shade900),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.blue.shade900,
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

Widget serviceButton(String title, String subtitle) {
  return InkWell(
    onTap: () {
      // Navigate to booking screen
    },
    child: Container(
      margin: EdgeInsets.only(top: 30, bottom: 30, left: 0, right: 0),
      padding: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        border:Border.all(color: Colors.grey.shade900),
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.grey.shade900,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          Text(subtitle, style: TextStyle(fontSize:12, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}


