import 'package:flutter/material.dart';
import 'image_gallery.dart';
import 'image_camera.dart';
import 'video_gallery.dart';
import 'video_camera.dart';
import 'qr_camera_scanner.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "CAM example",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.image),
                  text: "Image\nGallery",
                ),
                Tab(
                  icon: Icon(Icons.camera),
                  text: "Image\nCamera",
                ),
                Tab(
                  icon: Icon(Icons.video_camera_back),
                  text: "Video\nGallery",
                ),
                Tab(
                  icon: Icon(Icons.video_camera_front),
                  text: "Video\nCamera",
                ),
                Tab(
                  icon: Icon(Icons.qr_code_scanner),
                  text: "QR Camera",
                ),
              ],
              indicatorColor: Colors.purple,
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: TabBarView(
              children: [
                ImageGallery(),
                ImageCamera(),
                VideoGallery(),
                VideoCamera(),
                QRCodeScanner()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
