import 'package:flutter/material.dart';
import '../employee_delivery_details.dart';
import '/screens/customer/widgets/wizard_buttons.dart';

class EmployeeEditDeliverScreen3 extends StatelessWidget {
  EmployeeEditDeliverScreen3(
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
        title: Text('New Pickup Delivery Inquiry'),
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
                    Text(
                      "Receiver's Details",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: receiverFNameTextController,
                      decoration: const InputDecoration(
                        labelText: "Receiver's  First Name",
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
                      decoration: const InputDecoration(
                        labelText: "Receiver's Last Name",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.streetAddress,
                      maxLines: 5,
                      textAlign: TextAlign.start,
                      controller: receiverAddress,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: "Receiver's Address",
                        alignLabelWithHint: true,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: receiverLNameTextController,
                      decoration: const InputDecoration(
                        labelText: "Contact Number",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: receiverLNameTextController,
                      decoration: const InputDecoration(
                        labelText: "Alt Contact Number",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      controller: receiverLNameTextController,
                      decoration: const InputDecoration(
                        labelText: "Receiver's Email Address",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            WizardButtons(
              controller: controller,
              cDuration: cDuration,
              cCurve: cCurve,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
