import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to your Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                subtitle: Text('View and edit your profile'),
                onTap: () {
                  // Navigate to Profile Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.task),
                title: Text('Tasks'),
                subtitle: Text('Manage your tasks'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TasksPage()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.data_array),
                title: Text('Completed Task'),
                subtitle: Text('Add the completed tasks'),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Name: Sarsij Upadhyay',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email: sarsijupadhyay66@gmail.com',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Phone: +9140935896',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Address:Bikpaur , Ayodhya pin-224203',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Tasks',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text('Task 1'),
              subtitle: Text('Description of Task 1'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text('Task 2'),
              subtitle: Text('Description of Task 2'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text('Task 3'),
              subtitle: Text('Description of Task 3'),
            ),
          ],
        ),
      ),
    );
  }
}
