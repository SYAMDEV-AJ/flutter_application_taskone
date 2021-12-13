import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FaceBookHomeScreen(),
    );
  }
}

class FaceBookHomeScreen extends StatelessWidget {
  const FaceBookHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title:
            //  title: Text(''),
            Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFFe9eaec),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            cursorColor: Color(0xFF000000),
            // controller: _searchController,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF000000).withOpacity(0.5),
                ),
                hintText: "Search",
                border: InputBorder.none),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.forward,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/home_main.jpg'),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/home_main.jpg'),
                ),
                title: Row(
                  children: [
                    Text(
                      'Sebastian Smith',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/images/tick_mark.png',
                      width: 17,
                    )
                  ],
                ),
                subtitle: Text('Active'),
                trailing: Column(
                  children: [Icon(Icons.thumb_up_outlined), Text('Like')],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 4,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message),
                          Text('Follow'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.message_outlined,
                          color: Colors.black,
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(242, 242, 242, 0.75)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(242, 242, 242, 0.75)),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/home_main.jpg'),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/home_main.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Alice,Akshay and 2,30757 others like this'),
                ],
              ),
            ),
            SizedBox(
              height: .3,
              child: Container(
                color: Colors.grey,
              ),
            ),
            DefaultTabController(
              length: 6,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.blue,
                tabs: [
                  Tab(
                    // icon: Icon(Icons.home_filled),
                    text: "Home",
                  ),
                  Tab(
                    // icon: Icon(Icons.account_box_outlined),
                    text: "Posts",
                  ),
                  Tab(
                    // icon: Icon(Icons.alarm),
                    text: "About",
                  ),
                  Tab(
                    // icon: Icon(Icons.alarm),
                    text: "Videos",
                  ),
                  Tab(
                    // icon: Icon(Icons.alarm),
                    text: "Photos",
                  ),
                  Tab(
                    // icon: Icon(Icons.alarm),
                    text: "Events",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Align(
                          alignment: Alignment.topLeft, child: Text('About')),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.info),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('New Playground. Same Kid'),
                          ),
                        ],
                        //Text('New Playground. Same Kid'),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.web),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'WWW.sebsmith.com',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                        //Text('New Playground. Same Kid'),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.folder),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Actor',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                        //Text('New Playground. Same Kid'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: .6,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text('See All'),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            SizedBox(
              height: 5,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/index.png',
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Page Transparency',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
                //Text('New Playground. Same Kid'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
          ),
        ],
      ),
    );
  }
}
