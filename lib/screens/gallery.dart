import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tirutsava/widgets/side_drawer.dart';
import '/widgets/appbar.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  final List<String> imagePaths = [
    'lib/assets/images/image1.jpg',
    'lib/assets/images/image2.jpg',
    'lib/assets/images/image3.jpg',
    'lib/assets/images/image4.jpg',
    'lib/assets/images/image5.jpg',
    'lib/assets/images/image6.jpg',
    'lib/assets/images/image7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      backgroundColor: const Color(0xff0A0908),
      body: Stack(
        children: [
          // Background color
          Container(color: const Color(0xff0A0908)),

          // Background Image Overlay
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                "lib/assets/waves_background.png",
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Main content
          Column(
            children: [
              const CustomAppBar(title: "Gallery"),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MasonryGridView.count(
                    crossAxisCount: 2, // Fixed 2 columns
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    itemCount: imagePaths.length,
                    itemBuilder: (context, index) {
                      return _buildImageTile(imagePaths[index]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageTile(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}
