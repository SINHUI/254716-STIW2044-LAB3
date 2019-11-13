import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final String email;

  const MainScreen({Key key, this.email}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> tabs;
  
  int currentTabIndex=0;

  @override
  void initState() {
    super.initState();
    tabs = [
     Text("Your Registered Email: "+widget.email, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),

    ];
  }

  String $pagetitle = "My Farmer";

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentTabIndex,
        //backgroundColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed ,
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Color.fromRGBO(12, 130, 9, 1)),
            title: Text("Goods",style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color: Color.fromRGBO(12, 130, 9, 1)),
            title: Text("My Order",style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail,color: Color.fromRGBO(12, 130, 9, 1)),
            title: Text("Messages",style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Color.fromRGBO(12, 130, 9, 1)),
            title: Text("Profile",style: TextStyle(color: Colors.black),),
          )
        ],
      ),
    );
  }

  
}