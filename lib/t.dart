import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Uint8List? _image;

  String _name = "Mohana";
  String _phone = "+91 9360209794";

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadImageFromPreferences();
  }

  Future<void> saveImageToPreferences(Uint8List imageBytes) async {
    final String base64String = base64Encode(imageBytes);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('saved_image', base64String);
  }

  Future<void> loadImageFromPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? base64String = prefs.getString('saved_image');

    if (base64String != null) {
      final Uint8List bytes = base64Decode(base64String);
      setState(() {
        _image = bytes;
      });
    }
  }

  void _editInfo(String title, String currentValue, TextEditingController controller, Function(String) onSave) {
    controller.text = currentValue;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit $title'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: "Enter new $title"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                onSave(controller.text);
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void showImagePickerOption() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.width * 0.2, // Adjust height based on screen width
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      _pickImageFromGallery();
                    },
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image, size: MediaQuery.of(context).size.width * 0.06), // Adjust size based on screen width
                        Text(
                          "Gallery",
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.032), // Adjust font size based on screen width
                        ),
                      ],
                    ),

                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      _pickImageFromCamera();
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt, size: MediaQuery.of(context).size.width * 0.075), // Adjust size based on screen width
                        Text(
                          "Camera",
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04), // Adjust font size based on screen width
                        ),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),

        );
      },
    );
  }

  Future<void> _pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? returnImage = await picker.pickImage(source: ImageSource.gallery);
    if (returnImage != null) {
      final Uint8List imageBytes = await returnImage.readAsBytes();
      await saveImageToPreferences(imageBytes);
      setState(() {
        _image = imageBytes;
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? returnImage = await picker.pickImage(source: ImageSource.camera);
    if (returnImage != null) {
      final Uint8List imageBytes = await returnImage.readAsBytes();
      await saveImageToPreferences(imageBytes);
      setState(() {
        _image = imageBytes;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Movie time", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.5, // Adjust height based on screen width
                  width: MediaQuery.of(context).size.width * 0.5,  // Adjust width based on screen width
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.25), // Adjust border radius based on screen width
                    image: _image != null ? DecorationImage(image: MemoryImage(_image!), fit: BoxFit.cover) : null,
                  ),
                ),

                Positioned(
                  bottom: 5,
                  right: 2,
                  child: InkWell(
                    onTap: showImagePickerOption,
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.1, // Adjust height based on screen width
                      width: MediaQuery.of(context).size.width * 0.1, // Adjust width based on screen width
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.05), // Adjust border radius based on screen width
                      ),
                      child:  Icon(Icons.camera_alt_outlined, size: MediaQuery.of(context).size.width * 0.05), // Adjust icon size based on screen width
                    ),

                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.account_circle, size: MediaQuery.of(context).size.width * 0.1), // Adjust size based on screen width
              title: const Text("Name"),
              subtitle: Text(_name),
              onTap: () => _editInfo('name', _name, _nameController, (value) => setState(() => _name = value)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.phone, size: MediaQuery.of(context).size.width * 0.1), // Adjust size based on screen width
              title: const Text("Phone"),
              subtitle: Text(_phone),
              onTap: () => _editInfo('phone', _phone, _phoneController, (value) => setState(() => _phone = value)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.location_on_outlined, size: MediaQuery.of(context).size.width * 0.1), // Adjust size based on screen width
              title: const Text("Location"),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.language_rounded, size: MediaQuery.of(context).size.width * 0.1), // Adjust size based on screen width
              title: const Text("Language"),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.feedback_rounded, size: MediaQuery.of(context).size.width * 0.1), // Adjust size based on screen width
              title: const Text("feedback"),
            ),
          ),

          // IconButton(
          //   icon: Icon(themeNotifier.isDark
          //       ? Icons.wb_sunny
          //       : Icons.nightlight_round),
          //   onPressed: () {
          //     themeNotifier.isDark
          //         ? themeNotifier.isDark = false
          //         : themeNotifier.isDark = true;
          //   },),

        ],
      ),









    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}