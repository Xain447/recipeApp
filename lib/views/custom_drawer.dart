import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [

          Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/logo.png",
                  height: 180,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Healthy Meal Plans",
                    style: GoogleFonts.breeSerif(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(Icons.home, color: Colors.green),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Home",
                    style: GoogleFonts.breeSerif(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(Icons.settings, color: Colors.green),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Meal Planner",
                    style: GoogleFonts.breeSerif(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: InkWell(
              onTap: () {
//                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (con) => LoginScreen()), (Route<dynamic> route) => false,);
              },
              child: Row(
                children: [
                  Icon(Icons.person_pin, color: Colors.green),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.breeSerif(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
