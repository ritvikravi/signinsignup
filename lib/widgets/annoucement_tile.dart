import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementTile extends StatelessWidget {
  const AnnouncementTile({
    super.key,
    required this.announcement,
    required this.date,
  });

  final String announcement;
  final String date; // will update this formatting later
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
      margin: EdgeInsets.fromLTRB(16,10,16,10),
      decoration: BoxDecoration(
        color: const Color(0xff1C1A1A),
        // borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            announcement,
            style: GoogleFonts.ibmPlexMono(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 3,),
          Text(
            date,
            style: GoogleFonts.ibmPlexMono(
              fontSize: 13,
              color: const Color(0xff434040),
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
