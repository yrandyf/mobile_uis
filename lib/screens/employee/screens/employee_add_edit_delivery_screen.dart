import 'package:flutter/material.dart';
import 'package:sdp_cw1_mobile_uis/screens/employee/screens/wizard/employee_add_photo_screen.dart';
import '/screens/employee/screens/wizard/employee_edit_delivery_wizard_screen_4.dart';
import '/screens/employee/widgets/employee_sidebar.dart';
import '/screens/customer/screens/wizard/new_delivery_wizard_screen_3.dart';
import 'wizard/employee_edit_delivery_wizard_screen_2.dart';
import 'wizard/employee_edit_delivery_wizard_screen_1.dart';
import 'wizard/employee_edit_delivery_wizard_screen_3.dart';

class EmployeeEditNewDeliver extends StatefulWidget {
  static const routeName = '/EmpnewDelivery';

  const EmployeeEditNewDeliver({Key? key}) : super(key: key);

  @override
  _EmployeeEditNewDeliverState createState() => _EmployeeEditNewDeliverState();
}

class _EmployeeEditNewDeliverState extends State<EmployeeEditNewDeliver> {
  PageController controller = PageController(
    initialPage: 0,
  );
  static const cDuration = Duration(milliseconds: 300);
  static const cCurve = Curves.ease;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EmployeeSideBar(),
      body: PageView(
        controller: controller,
        children: [
          EmployeeEditDeliverScreen1(
            controller: controller,
            cCurve: cCurve,
            cDuration: cDuration,
          ),
          EmployeeEditDeliverScreen2(
            controller: controller,
            cCurve: cCurve,
            cDuration: cDuration,
          ),
          EmployeeEditDeliverScreen3(
            controller: controller,
            cCurve: cCurve,
            cDuration: cDuration,
          ),
          EmployeeEditDeliverScreen4(
            controller: controller,
            cCurve: cCurve,
            cDuration: cDuration,
          ),
        ],
      ),
    );
  }
}
