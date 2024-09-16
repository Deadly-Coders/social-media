import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniColab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UniConnectApp(),
    );
  }
}

class UniConnectApp extends StatefulWidget {
  @override
  _UniConnectAppState createState() => _UniConnectAppState();
}

class _UniConnectAppState extends State<UniConnectApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Image.asset('assets/images/gta.jpg', height: 30),
            SizedBox(width: 8),
            Text('UniColab'),
          ],
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'UniColab',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Friends'),
              onTap: () {
                // Navigate to Friends screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Market'),
              onTap: () {
                // Navigate to Market screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Career Hub'),
              onTap: () {
                // Navigate to Career Hub screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Lectures'),
              onTap: () {
                // Navigate to Lectures screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('Resources'),
              onTap: () {
                // Navigate to Resources screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Communities'),
              onTap: () {
                // Navigate to Communities screen
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings screen
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for friends, events, resources...',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'People',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildPersonCard(
                    'Virendra Warade',
                    'assets/images/virendra.png',
                    onPressed: () {},
                  ),
                  SizedBox(height: 16),
                  _buildPersonCard(
                    'Saish Yadav',
                    'assets/images/saish.png',
                    onPressed: () {},
                  ),
                  SizedBox(height: 16),
                  _buildPersonCard(
                    'Aryan Shukla',
                    'assets/images/aryan1.png',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Upcoming Events',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildEventCard(
                          'HackCelestial | Pillai',
                          'Join the annual hackathon',
                          'assets/images/hackcelestial.png',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: _buildEventCard(
                          'SIH 2024',
                          'Government of...',
                          'assets/images/sih.png',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trending Topics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTopicCard(
                          'Study Tips',
                          'Best study practices',
                          'assets/images/topic1.jpg',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: _buildTopicCard(
                          'Campus News',
                          'Latest campus updates',
                          'assets/images/topic2.jpg',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: _buildTopicCard(
                          'Sports',
                          'Sports news and updates',
                          'assets/images/topic3.jpg',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
        ],
      ),
    );
  }

  Widget _buildPersonCard(String name, String imagePath,
      {required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(width: 16),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  Widget _buildEventCard(
      String title,
      String description,
      String imagePath, {
        required VoidCallback onPressed,
      }) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopicCard(
      String title,
      String description,
      String imagePath, {
        required VoidCallback onPressed,
      }) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}