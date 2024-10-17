import 'package:flutter/material.dart';

class TumorsPage extends StatefulWidget {
  const TumorsPage({super.key});

  @override
  State<TumorsPage> createState() => _TumorsPageState();
}

class _TumorsPageState extends State<TumorsPage> {
  final Map<String, String> imageRoutes = {
    'assets/images/tumor1.png': '/tumor1',
    'assets/images/tumor2.png': '/tumor2',
    'assets/images/tumor3.png': '/tumor3',
    'assets/images/tumor5.png': '/tumor5',
    'assets/images/tumor6.png': '/tumor6',
    'assets/images/tumor7.png': '/tumor7',
    'assets/images/tumor8.png': '/tumor8',
    'assets/images/tumor9.png': '/tumor9',
    'assets/images/tumor10.png': '/tumor10',
    'assets/images/tumor11.png': '/tumor11',
    'assets/images/tumor12.png': '/tumor12',
    'assets/images/tumor13.png': '/tumor13',
    'assets/images/tumor14.png': '/tumor14',
    'assets/images/tumor15.png': '/tumor15',
    'assets/images/tumor16.png': '/tumor16',
    'assets/images/tumor17.png': '/tumor17',
    'assets/images/tumor18.png': '/tumor18',
    'assets/images/tumor19.png': '/tumor19',
    'assets/images/tumor20.png': '/tumor20',
    'assets/images/tumor21.png': '/tumor21',
    'assets/images/tumor22.png': '/tumor22',
    'assets/images/tumor23.png': '/tumor23',
    'assets/images/tumor24.png': '/tumor24',
    'assets/images/tumor25.png': '/tumor25',
    'assets/images/tumor26.png': '/tumor26',
    'assets/images/tumor27.png': '/tumor27',
    'assets/images/tumor28.png': '/tumor28',
    'assets/images/tumor29.png': '/tumor29',
    'assets/images/tumor30.png': '/tumor30',

    // Add more asset-path-to-route mappings here
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.purple.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: imageRoutes.keys.map((imagePath) {
            return Material(
              color: Colors.transparent, // Set the Material color to transparent
              child: InkWell(
                onTap: () {
                  // Navigate to the corresponding route based on the clicked image
                  Navigator.pushNamed(context, imageRoutes[imagePath]!);
                },
                splashColor: Colors.blue.withOpacity(0.5), // Splash effect on tap
                borderRadius: BorderRadius.circular(20), // Match the border radius
                child: Container(
                  margin: const EdgeInsets.all(4), // Optional: Space around each image
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2), // Black border with width of 2
                    borderRadius: BorderRadius.circular(0), // Rounded corners
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Ink.image(
                      image: AssetImage(imagePath), // Use Ink.image with AssetImage
                      fit: BoxFit.cover,
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
