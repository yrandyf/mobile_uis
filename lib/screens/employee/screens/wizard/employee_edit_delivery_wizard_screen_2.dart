import 'package:flutter/material.dart';
import '/screens/customer/widgets/wizard_buttons.dart';

class EmployeeEditDeliverScreen2 extends StatefulWidget {
  EmployeeEditDeliverScreen2(
      {required this.controller,
      required this.cDuration,
      required this.cCurve});

  PageController controller;
  var cDuration;
  var cCurve;

  @override
  State<EmployeeEditDeliverScreen2> createState() =>
      _EmployeeEditDeliverScreen2State();
}

class _EmployeeEditDeliverScreen2State
    extends State<EmployeeEditDeliverScreen2> {
  final _formKey = GlobalKey<FormState>();

  DateTime selectedStartingDate = DateTime.now();
  TimeOfDay selectedStartingTime = TimeOfDay.now();

  final itemDescTextController = TextEditingController();

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedStartingTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedStartingTime) {
      setState(() {
        selectedStartingTime = timeOfDay;
      });
    }
  }

  _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: selectedStartingDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selectedDate != null && selectedDate != selectedStartingDate)
      setState(() {
        selectedStartingDate = selectedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickup Time & Date'),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tell us when to come & pickup your package",
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText:
                                      '${selectedStartingDate.day}/${selectedStartingDate.month}/${selectedStartingDate.year}',
                                  enabled: false,
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  _selectDate(context);
                                },
                                child: const Text("Select Pickup Date"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey),
                                  ),
                                  hintText:
                                      "${selectedStartingTime.hour}:${selectedStartingTime.minute}",
                                  enabled: false,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  _selectTime(context);
                                },
                                child: const Text("Select Pickup Time"),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        controller: itemDescTextController,
                        maxLines: 5,
                        decoration: const InputDecoration(
                          labelText: "Package Details",
                          hintText: "Type, Fragility",
                          alignLabelWithHint: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.01,
              ),
              WizardButtons(
                controller: widget.controller,
                cDuration: widget.cDuration,
                cCurve: widget.cCurve,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
