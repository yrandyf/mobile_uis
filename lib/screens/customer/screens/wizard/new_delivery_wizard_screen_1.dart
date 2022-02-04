import 'package:flutter/material.dart';
import '/screens/customer/widgets/wizard_buttons.dart';

class CustomerNewDeliverScreen1 extends StatelessWidget {
  CustomerNewDeliverScreen1(
      {required this.controller,
      required this.cDuration,
      required this.cCurve});
  final _formKey = GlobalKey<FormState>();
  PageController controller;
  final cDuration;
  final cCurve;

  @override
  Widget build(BuildContext context) {
    final senderFNameTextController = TextEditingController();
    final senderLNameTextController = TextEditingController();
    final senderAddress = TextEditingController();

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
                      "Sender's Details",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: senderFNameTextController,
                      decoration: const InputDecoration(
                        labelText: "Sender's First Name",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: senderLNameTextController,
                      decoration: const InputDecoration(
                        labelText: "Sender's Last Name",
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
                      controller: senderAddress,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: "Sender's Address",
                        alignLabelWithHint: true,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: senderLNameTextController,
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
                      controller: senderLNameTextController,
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
                      controller: senderLNameTextController,
                      decoration: const InputDecoration(
                        labelText: "Sender Email Address",
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
            )
          ],
        ),
      ),
    );
  }
}
