import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/customer_sidebar.dart';
import 'add_new_delivery_screen.dart';

class CustomerMainScreen extends StatefulWidget {
  static const routeName = '/cmain';
  const CustomerMainScreen({Key? key}) : super(key: key);

  @override
  _CustomerMainScreenState createState() => _CustomerMainScreenState();
}

class _CustomerMainScreenState extends State<CustomerMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Text('Pick & Go'),
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
                trailing: Text('ETA: 04 Feb'),
                onTap: () {},
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text("New"),
        onPressed: () {
          Navigator.of(context).pushNamed(CustomerAddNewDeliver.routeName);
        },
      ),
    );
  }
}
