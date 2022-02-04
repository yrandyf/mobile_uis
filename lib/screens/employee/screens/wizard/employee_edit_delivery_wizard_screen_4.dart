import 'package:flutter/material.dart';
import '../employee_delivery_details.dart';
import 'employee_add_photo_screen.dart';

class EmployeeEditDeliverScreen4 extends StatelessWidget {
  EmployeeEditDeliverScreen4(
      {required this.controller,
      required this.cDuration,
      required this.cCurve});
  final _formKey = GlobalKey<FormState>();
  PageController controller;
  final cDuration;
  final cCurve;

  @override
  Widget build(BuildContext context) {
    final receiverFNameTextController = TextEditingController();
    final receiverLNameTextController = TextEditingController();
    final receiverAddress = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Package Details'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(EmployeeAddPhotoScreen.routeName);
              },
              icon: Icon(Icons.add_a_photo))
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      "Pacakge Details",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/mes.png'),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: receiverFNameTextController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        suffix: Text('m'),
                        labelText: "Package Width",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: receiverLNameTextController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        suffix: Text('m'),
                        labelText: "Package Height",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      controller: receiverLNameTextController,
                      decoration: const InputDecoration(
                        suffix: Text('m'),
                        labelText: "Package Length",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      controller: receiverLNameTextController,
                      decoration: const InputDecoration(
                        suffix: Text('kg'),
                        labelText: "Package Weight",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Prev',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    controller.previousPage(duration: cDuration, curve: cCurve);
                  },
                ),
                TextButton(
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(EmployeeDeliveryDetailsScreen.routeName);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
