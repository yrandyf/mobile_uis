import 'package:flutter/material.dart';
import '/screens/customer/screens/wizard/new_delivery_wizard_screen_3.dart';
import '/screens/customer/widgets/customer_sidebar.dart';
import 'wizard/new_delivery_wizard_screen_2.dart';
import 'wizard/new_delivery_wizard_screen_1.dart';

class CustomerAddNewDeliver extends StatefulWidget {
  static const routeName = '/newDelivery';

  const CustomerAddNewDeliver({Key? key}) : super(key: key);

  @override
  _CustomerAddNewDeliverState createState() => _CustomerAddNewDeliverState();
}

class _CustomerAddNewDeliverState extends State<CustomerAddNewDeliver> {
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
      drawer: SideBar(),
      body: PageView(
        controller: controller,
        children: [
          CustomerNewDeliverScreen1(
            controller: controller,
            cCurve: cCurve,
            cDuration: cDuration,
          ),
          CustomerNewDeliverScreen2(
            controller: controller,
            cCurve: cCurve,
            cDuration: cDuration,
          ),
          CustomerNewDeliverScreen3(
            controller: controller,
            cCurve: cCurve,
            cDuration: cDuration,
          ),
        ],
      ),
    );
  }
}
