import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KTP Predictor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? imageFile; // Store the picked image file
  final picker = ImagePicker();
  String result = '';

  Future<void> uploadImage() async {
    try {
      var url = 'https://7a94-34-143-200-65.ngrok-free.app/predict'; // Replace with your ngrok public URL
      var request = http.MultipartRequest('POST', Uri.parse(url));
      if (imageFile != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'file',
            imageFile!.path,
          ),
        );

        var streamedResponse = await request.send();
        var response = await http.Response.fromStream(streamedResponse);

        if (response.statusCode == 200) {
          setState(() {
            result = response.body;
          });
        } else {
          setState(() {
            result = 'Error: ${response.reasonPhrase}';
          });
        }
      } else {
        setState(() {
          result = 'No image selected';
        });
      }
    } catch (e) {
      setState(() {
        result = 'Error: $e';
      });
    }
  }

  getFromGallery() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  getFromCamera() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KTP Predictor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                getFromGallery();
              },
              child: Text('Pick Image from Gallery'),
            ),
            ElevatedButton(
              onPressed: () {
                getFromCamera();
              },
              child: Text('Capture Image from Camera'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await uploadImage();
              },
              child: Text('Upload Image for Prediction'),
            ),
            SizedBox(height: 20),
            Text(
              'Prediction Result:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              result.isNotEmpty ? result : 'No result yet',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
