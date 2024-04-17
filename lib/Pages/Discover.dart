import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';



class Discover extends StatelessWidget{
  const Discover ({super.key});

  @override

  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black, //Icon Color
        ),
        title: Text("Search Rail",
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color:Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700
            )
          ),
        ),
        centerTitle: true,
      ),


      body: Stack(
        children: [
          Image.asset('Assets/bgpicture.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Container (
            width: double.infinity,
            height: 36,
            color: Color(0xfff1a868),

            child: Marquee (
              text: 'Announcement: We are Working on this App',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12
              ),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              blankSpace: 20.0,
              velocity: 80.0,
              pauseAfterRound: Duration(seconds: 1),
              startPadding: 10,
              accelerationDuration: Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,

            ),
          ),

          Container (),

          Container (),

          const SizedBox(height: 10),

          Container()
        ],
      ),
      // extendBodyBehindAppBar: false,
    );
  }
}