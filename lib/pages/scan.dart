import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  File? imageFile; // Store the picked image file
  final picker = ImagePicker();

  Future<void> showPictureDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(title: const Text('Select Action'), children: [
            SimpleDialogOption(
              onPressed: () {
                getFromCamera();
                Navigator.of(context).pop();
              },
              child: const Text('Camera'),
            ),
            SimpleDialogOption(
              onPressed: () {
                getFromGallery();
                Navigator.of(context).pop();
              },
              child: const Text('Gallery'),
            )
          ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 0, 0),
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Container(
            width: 375,
            height: 812,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Stack(
              children: [
                Container(
                  width: 375,
                  height: 812,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                        context); // Navigate back to the previous screen
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 50,
                          left: 30,
                          child: Container(
                            width: 70,
                            height: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(81, 101, 191, 1),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // second box
                  margin: const EdgeInsets.only(left: 65, top: 550),
                  width: 259,
                  height: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xfff1f5fc),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Container(
                  // first box
                  margin: const EdgeInsets.only(left: 65, top: 178),
                  width: 259,
                  height: 304,
                  child: Stack(
                    children: [
                      Container(
                        width: 259,
                        height: 304,
                        child: SizedBox.expand(
                          child: FittedBox(
                              child: imageFile != null
                                  ? Image.file(File(imageFile!.path),
                                      fit: BoxFit.cover)
                                  : const Icon(
                                      Icons.image_outlined,
                                      color: Colors.blueGrey,
                                    )),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xfffcfcfc),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(11, 219, 4, 4),
                              offset: Offset(0, 16),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 259,
                        height: 304,
                        decoration: BoxDecoration(
                          color: const Color(0x0c1c69ff),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: const Color(0x0c8d8d8d),
                              offset: Offset(0, 16),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 495,
                    left: 18,
                  ), // Adjust the top padding as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showPictureDialog();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Button color
                        ),
                        child: Text(
                          'Pick Image',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            imageFile = null;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Button color
                        ),
                        child: Text(
                          'Clear Image',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 83, top: 560),
                  child: Text(
                    'Please, align QR Code within\nthe frame to make scanning\neasily detectable.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      color: const Color(0xff5165bf),
                      fontFamily: 'Arial-ItalicMT',
                      fontWeight: FontWeight.normal,
                    ),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 125, top: 140),
                  child: Text(
                    'Scan KTM Anda',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: const Color(0xff878787),
                      fontFamily: 'Arial-ItalicMT',
                      fontWeight: FontWeight.normal,
                    ),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getFromGallery() async {
    final PickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (PickedFile != null) {
      setState(() {
        imageFile = File(PickedFile.path);
      });
    }
  }

  getFromCamera() async {
    final PickedFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (PickedFile != null) {
      setState(() {
        imageFile = File(PickedFile.path);
      });
    }
  }
}
