import 'package:flutter/material.dart';

class TakePictureScreen extends StatelessWidget {
  const TakePictureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight / 6),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Take Image'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Title',
                      filled: true,
                      isDense: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Write a description of the image',
                      filled: true,
                      // fillColor: Colors.grey.withOpacity(0.2),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none, // Sin bordes visibles
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Place',
                      filled: true,
                      isDense: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
