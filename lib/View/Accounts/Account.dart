import 'package:flutter/material.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  // Sample account info
  final String _name = 'John Doe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: SingleChildScrollView( // Allow scrolling if content overflows
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Profile picture section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval( // Clip image for rounded corners
                    child: Image.asset(
                      'assets/images/bike.png', // Replace with your asset path
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover, // Adjust image fit as needed
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0), // Add some spacing

              // Account name
              Text(
                _name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0), // Add some spacing

              // Settings list
              ListView.builder(
                shrinkWrap: true, // Prevent list from expanding unnecessarily
                itemCount: _settingsList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_settingsList[index]),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () => print('Tapped setting: ${_settingsList[index]}'), // Add your action
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Sample settings list
  final List<String> _settingsList = [
    'Edit Profile',
    'Change Password',
    'Notifications',
    'Privacy Settings',
    'Logout',
  ];
}
 