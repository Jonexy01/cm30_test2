import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        leading: Image.asset('assets/images/person.png'),
        actions: [
          IconButton(
            color: Color(0xff002DCC),
            onPressed: () {}, 
            icon: Icon(Icons.logout)
          ),
          TextButton(
            onPressed: () {}, 
            child: Text(
              'Log Out',
              style: TextStyle(
                color: Color(0xff001B7A),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            )
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(19, 17, 0, 0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 120,
                maxHeight: 63,
              ),
              child: Text(
                'Welcome, Wade Flores',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1F271B),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(23, 96, 0, 0),
            child: Text(
              'Northern Foreshore Estate',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff1F271B),
              ),
            ),
          )
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffFFFFFF),
        selectedItemColor: Color(0xff0327AA),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Estate Dues',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ]
      ),
    );
  }
}