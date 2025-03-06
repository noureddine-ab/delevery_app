import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  int _selectedIndex = 0;
  final List<Map<String, String>> deliveryMen = [
    {
      'name': 'John Doe',
      'phone': '+1 234 567 890',
      'location': 'Downtown Area',
    },
    {
      'name': 'Mike Johnson',
      'phone': '+1 345 678 901',
      'location': 'Suburban District',
    },
    {
      'name': 'Sarah Williams',
      'phone': '+1 456 789 012',
      'location': 'Industrial Zone',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 420,
            padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                // Source Address
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.location_on,
                      color: Colors.deepPurple,
                    ),
                    hintText: 'Source Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                // Destination Address
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.location_pin,
                      color: Colors.deepPurple,
                    ),
                    hintText: 'Destination Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                // Vehicle Type (simulated dropdown)
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.directions_car,
                      color: Colors.deepPurple,
                    ),
                    hintText: 'Select Vehicle Type',
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: OutlineInputBorder(),
                  ),
                  readOnly: true,
                ),
                SizedBox(height: 15),
                // Cargo Type (simulated dropdown)
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.inventory, color: Colors.deepPurple),
                    hintText: 'Select Cargo Type',
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: OutlineInputBorder(),
                  ),
                  readOnly: true,
                ),
                SizedBox(height: 20),
                // Search Button
                Center(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.search),
                    label: Text('Search'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[100],
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: deliveryMen.length,
                itemBuilder: (context, index) {
                  final driver = deliveryMen[index];
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.only(bottom: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person, color: Colors.deepPurple),
                              SizedBox(width: 10),
                              Text(
                                driver['name']!,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.grey[600],
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                driver['phone']!,
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey[600],
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                driver['location']!,
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
