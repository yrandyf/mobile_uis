import 'package:flutter/material.dart';
import '/screens/employee/widgets/employee_sidebar.dart';
import 'package:flutter/services.dart';
import 'employee_add_edit_delivery_screen.dart';

class EmployeeDeliveryDetailsScreen extends StatefulWidget {
  static const routeName = '/Emppdetails';
  const EmployeeDeliveryDetailsScreen({Key? key}) : super(key: key);

  @override
  _EmployeeDeliveryDetailsScreenState createState() =>
      _EmployeeDeliveryDetailsScreenState();
}

class _EmployeeDeliveryDetailsScreenState
    extends State<EmployeeDeliveryDetailsScreen> {
  final trackingNumAddress = TextEditingController();

  copyToClipBoard(String trackNo) {
    Clipboard.setData(ClipboardData(text: trackNo)).then(
      (_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Tracking Number Copied to Your Clipboard"),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EmployeeSideBar(),
      appBar: AppBar(
        title: Text('Pacakge Delivery Details'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(EmployeeEditNewDeliver.routeName);
              },
              icon: Icon(Icons.edit)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => copyToClipBoard('PKG234234234'),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your Tracking Number '),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          child: Text(
                            'PKG234234234',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Tap here to copy',
                          style: TextStyle(fontSize: 8),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Package Deliver Status'),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Pickup Dispatched!',
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Status Updated on 16:35 on 28th of 2022',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Assigned Driver'),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Nimal Fernando',
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Vehicle Type : Van',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 16.0),
                      child: Text('Operational Center Route'),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sender’s Center'),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                width: MediaQuery.of(context).size.width * 0.37,
                                height: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                child: Text(
                                  'No.51/2, Level, 2 Lotus Rd, Colombo 1',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Reciever’s Center'),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                width: MediaQuery.of(context).size.width * 0.37,
                                height: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                child: Text(
                                  'No.51/2, Level, 2 Lotus Rd, Colombo 1',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pickup Date'),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Text(
                          '03/02/2022',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text('Pickup Time'),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Text(
                          '16:30',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Delivery Cost'),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Text(
                          'LKR 8000/=',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sender’s Details"),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sender’s First Name : Elliot',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Sender’s Last Name : Smith',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Contact : 071 675 5355',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Alt Contact : 072 854 5376',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Email : elliesf@gmail.com',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Address : 340 1/A, Elsy Road, Nalluruwa, Panadura',
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Receiver's Details"),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Receiver's First Name : Randeep",
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Receiver's Last Name : Fernando",
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Contact : 076 834 5311",
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Alt Contact : 072 834 5311",
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Email : randeepf7@gmail.com",
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Address : No.51/2, Level, 2 Lotus Rd, Colombo 00100',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Package Details"),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.only(top: 8.0, left: 7),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Width: 45 m",
                              style: TextStyle(fontSize: 13),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Height: 45 m",
                              style: TextStyle(fontSize: 13),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Length: 45 m",
                              style: TextStyle(fontSize: 13),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Weight: 45 kg",
                              style: TextStyle(fontSize: 13),
                            ),
                            const SizedBox(width: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Package Description'),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Text(
                          'Extremely Fragile and requires extreme care.',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
