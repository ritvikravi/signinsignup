import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// relative imports
import '../widgets/appbar.dart';
import '../widgets/event.dart';
import '../models/dummy.dart';
import '../widgets/side_drawer.dart';
import '../widgets/store_slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      backgroundColor: const Color(0xff0A0908),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Custom app bar
          const CustomAppBar(
            title: "TIRUTSUVA",
          ),
          // Main scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff0A0908),
                  image: DecorationImage(
                    image: AssetImage(
                      "lib/assets/waves_background.png", // Background vector
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "NEON DREAMS. PURE EUPHORIA",
                      style: GoogleFonts.ibmPlexMono(
                        fontSize: 23,
                        color: const Color(0xff63675D),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    EventCarousel(events: events),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Wanna Grab A Bite?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ibmPlexMono(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StoreSlider(
                      foodItems: [
                        {
                          "title": "Amigo's Pizza",
                          "location": "Stall 24",
                          "price": "800 for 2",
                          "date": "21st - 23rd",
                          "imageUrl":
                              "https://i.pinimg.com/736x/86/f9/23/86f923d8d70666714af50b353f3decf9.jpg",
                          "color": Colors.red.shade700,
                        },
                        {
                          "title": "Super Burgers",
                          "location": "Stall 89",
                          "price": "800 for 2",
                          "date": "21st - 23rd",
                          "imageUrl":
                              "https://i.pinimg.com/736x/80/1e/de/801edeeb3f1947234c392c7ab35395c1.jpg",
                          "color": Colors.green.shade700,
                        },
                        {
                          "title": "Bobac Coffee",
                          "location": "Stall 4",
                          "price": "800 for 2",
                          "date": "21st - 23rd",
                          "imageUrl":
                              "https://i.pinimg.com/736x/9c/b9/5e/9cb95e8cf75da758f6cd284869ec45cd.jpg",
                          "color": Colors.yellow.shade700,
                        },
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Center(
                        child: Text(
                          "Announcements",
                          style: GoogleFonts.ibmPlexMono(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xff1C1A1A),
                        // borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Paintball registration will be closing soon, at 3pm! Come ASAP",
                        style: GoogleFonts.ibmPlexMono(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xff1C1A1A),
                        // borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Horror House closing times have been postponed to 11pm. Enjoy!",
                        style: GoogleFonts.ibmPlexMono(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
