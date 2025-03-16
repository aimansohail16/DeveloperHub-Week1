import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple.shade700, Colors.blue.shade900],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back!",
                    style: GoogleFonts.aboreto(
                        textStyle: TextStyle(
                            fontSize: 35,
                            color: Colors.white
                        )
                    )
                ),
                SizedBox(height: 10,),
                Text("Let’s get you back on track!",
                  style: GoogleFonts.actor(
                    color: Colors.white
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
