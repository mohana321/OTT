// import 'dart:js';
// import 'dart:convert';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:ott/provider/provider.dart';
// import 'package:provider/provider.dart';
//
// class settings extends StatefulWidget {
//   const settings({super.key});
//
//   @override
//   State<settings> createState() => _settingsState();
// }
//
// class _settingsState extends State<settings> {
//   Uint8List? _image;
//
//   void initState() {
//     super.initState();
//     loadImageFromPreferences();
//   }
//
//   Future<void> saveImageToPreferences(Uint8List imageBytes) async {
//     final String base64String = base64Encode(imageBytes);
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('saved_image', base64String);
//   }
//
//   Future<void> loadImageFromPreferences() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     final String? base64String = prefs.getString('saved_image');
//
//     if (base64String != null) {
//       final Uint8List bytes = base64Decode(base64String);
//       setState(() {
//         _image = bytes;
//       });
//     }
//   }
//   // void showImagePickerOption() {
//   //   showModalBottomSheet(
//   //     context: context,
//   //     builder:(BuildContext context) {
//   //       return SafeArea(
//   //         child: Container(
//   //           height: 100,
//   //           child: Row(
//   //             mainAxisAlignment: MainAxisAlignment.center,
//   //             children: [
//   //               Expanded(
//   //                 child: InkWell(
//   //                   onTap: () {
//   //                     Navigator.of(context).pop();
//   //                     _pickImageFromGallery();
//   //                   },
//   //                   child: Column(
//   //                     mainAxisAlignment: MainAxisAlignment.center,
//   //                     children: const [
//   //                       Icon(Icons.image, size: 30),
//   //                       Text("Gallery", style: TextStyle(fontSize: 16)),
//   //                     ],
//   //                   ),
//   //                 ),
//   //               ),
//   //               Expanded(
//   //                 child: InkWell(
//   //                   onTap: () {
//   //                     Navigator.of(context).pop();
//   //                     _pickImageFromCamera();
//   //                   },
//   //                   child: Column(
//   //                     mainAxisAlignment: MainAxisAlignment.center,
//   //                     children: const [
//   //                       Icon(Icons.camera_alt, size: 30),
//   //                       Text("Camera", style: TextStyle(fontSize: 16)),
//   //                     ],
//   //                   ),
//   //                 ),
//   //               ),
//   //             ],
//   //           ),
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }
//
//
//   Future<void> _pickImageFromGallery() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? returnImage = await picker.pickImage(source: ImageSource.gallery);
//     if (returnImage != null) {
//       final Uint8List imageBytes = await returnImage.readAsBytes();
//       await saveImageToPreferences(imageBytes);
//       setState(() {
//         _image = imageBytes;
//       });
//     }
//   }
//
//   Future<void> _pickImageFromCamera() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? returnImage = await picker.pickImage(source: ImageSource.camera);
//     if (returnImage != null) {
//       final Uint8List imageBytes = await returnImage.readAsBytes();
//       await saveImageToPreferences(imageBytes);
//       setState(() {
//         _image = imageBytes;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: GestureDetector(
//           onTap: (){
//             Navigator.pop(context);
//             },
//
//             child: Icon(Icons.arrow_back)),
//       ),
//       body: Consumer<Uiprovider>(
//         builder: (context,Uiprovider notifier,child) {
//           return Column(
//             children: [
//               Center(
//                 child: Stack(
//                   children: [
//                     Container(
//                       height: 200,
//                       width: 200,
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.circular(100),
//                         image: _image != null ? DecorationImage(image: MemoryImage(_image!), fit: BoxFit.cover) : null,
//                       ),
//                     ),
//                     // Positioned(
//                     //   bottom: 5,
//                     //   right: 2,
//                     //   child: InkWell(
//                     //     onTap: showImagePickerOption,
//                     //     child: Container(
//                     //       height: 60,
//                     //       width: 60,
//                     //       decoration: BoxDecoration(
//                     //         color: Colors.blue,
//                     //         borderRadius: BorderRadius.circular(30),
//                     //       ),
//                     //       child: const Icon(Icons.camera_alt_outlined, size: 30),
//                     //     ),
//                     //   ),
//                     // ),
//                   ],
//                 ),
//               ),
//               Divider(),
//               ListTile(
//                 leading: Icon(Icons.tv),
//                 title: Text(
//                   "Your channel",
//                   style: TextStyle(
//                     fontSize: MediaQuery.of(context).size.width * 0.05, // Adjust the percentage as needed for font size
//                   ),
//                 ),
//               ),
//
//               ListTile(
//                 leading: Icon(Icons.monetization_on),
//                 title: Text("Paid Membership",style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),),
//               ),
//               ListTile(
//                 leading: Icon(Icons.local_movies),
//                 title: Text("Rttube video",style: TextStyle(fontSize:MediaQuery.of(context).size.width * 0.05),),
//               ),
//               ListTile(
//                 leading: const Icon(Icons.light_mode),
//                 title: const Text("light theme",style: TextStyle(fontSize: 30),),
//                 trailing:Switch(value: notifier.isDark,
//                   onChanged:(value)=>notifier.changeTheme(),
//                 ),
//               ),
//                ListTile(
//                 leading: Icon(Icons.language_rounded),
//                 title: Text("language",style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),),
//               ),
//               ListTile(
//                 leading: Icon(Icons.location_on_outlined),
//                 title: Text("Location",style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),),
//               ),
//               ListTile(
//                 leading: Icon(Icons.feedback_rounded),
//                 title: Text("Feedback",style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),),
//               ),
//
//
//             ],
//           );
//         }
//       ),
//     );
//   }
// }
