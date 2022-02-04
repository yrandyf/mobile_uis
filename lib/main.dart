import 'package:flutter/material.dart';

import 'screens/customer/screens/add_new_delivery_screen.dart';
import 'screens/customer/screens/customer_delivery_details.dart';
import 'screens/customer/screens/main_screen.dart';
import 'screens/employee/screens/employee_add_edit_delivery_screen.dart';
import 'screens/employee/screens/employee_delivery_details.dart';
import 'screens/employee/screens/main_screen.dart';
import 'screens/employee/screens/wizard/employee_add_photo_screen.dart';
import 'screens/login.dart';
import 'screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato',
      ),
      home: LoginPage(),
      routes: {
        RegisterForm.routeName: (ctx) => RegisterForm(),
        LoginPage.routeName: (ctx) => LoginPage(),
        CustomerMainScreen.routeName: (ctx) => CustomerMainScreen(),
        CustomerAddNewDeliver.routeName: (ctx) => CustomerAddNewDeliver(),
        CustomerDeliveryDetailsScreen.routeName: (ctx) =>
            CustomerDeliveryDetailsScreen(),
        EmployeeMainScreen.routeName: (ctx) => EmployeeMainScreen(),
        EmployeeDeliveryDetailsScreen.routeName: (ctx) =>
            EmployeeDeliveryDetailsScreen(),
        EmployeeEditNewDeliver.routeName: (ctx) => EmployeeEditNewDeliver(),
        EmployeeAddPhotoScreen.routeName: (ctx) => EmployeeAddPhotoScreen(),
      },
    );
  }
}
