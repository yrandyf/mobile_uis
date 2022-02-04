import 'package:flutter/material.dart';
import '/screens/employee/widgets/employee_sidebar.dart';
import 'employee_delivery_details.dart';

class EmployeeMainScreen extends StatefulWidget {
  static const routeName = '/empmain';
  const EmployeeMainScreen({Key? key}) : super(key: key);

  @override
  _EmployeeMainScreenState createState() => _EmployeeMainScreenState();
}

class _EmployeeMainScreenState extends State<EmployeeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EmployeeSideBar(),
      appBar: AppBar(
        title: Text('Pick & Go : Employee Portal'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Tracking No: PKG234234'),
                subtitle: Text('From: Panadura, To: Colombo'),
                trailing: Text('04 Feb'),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(EmployeeDeliveryDetailsScreen.routeName);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
