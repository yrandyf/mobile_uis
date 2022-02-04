import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../employee_delivery_details.dart';
import '/screens/customer/widgets/wizard_buttons.dart';

class EmployeeAddPhotoScreen extends StatefulWidget {
  static const routeName = '/EmpnewAddPic';
  EmployeeAddPhotoScreen();

  @override
  State<EmployeeAddPhotoScreen> createState() => _EmployeeAddPhotoScreenState();
}

class _EmployeeAddPhotoScreenState extends State<EmployeeAddPhotoScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final receiverFNameTextController = TextEditingController();
    final receiverLNameTextController = TextEditingController();
    final receiverAddress = TextEditingController();
    File? _image;
    final ImagePicker picker = ImagePicker();

    _imgFromCamera() async {
      final image = await picker.pickImage(source: ImageSource.camera);

      setState(() {
        if (_image != null) {
          _image = File(image!.path);
          print(_image);
        } else {
          print('image: $_image');
        }
      });
    }

    Future _imgFromGallery() async {
      final pickedFile = await picker.getImage(source: ImageSource.gallery);

      setState(
        () {
          if (pickedFile != null) {
            _image = File(pickedFile.path);
          } else {
            print('No image selected.');
          }
        },
      );
    }

    _ImagePicker(context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext buildContext) {
          return Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.photo_library),
                      title: Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  ListTile(
                    leading: Icon(Icons.photo_camera),
                    title: Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Package Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Upload Reciever's Photo",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 12),
            _image == null
                ? InkWell(
                    onTap: () => _ImagePicker(context),
                    child: Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.40,
                        child: const Icon(
                          Icons.file_upload_outlined,
                          size: 150,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  )
                : Container(
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(
                          _image!,
                        ),
                      ),
                    ),
                  ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'Upload',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
