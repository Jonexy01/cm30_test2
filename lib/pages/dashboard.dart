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
      body: SingleChildScrollView(
        child: Stack(
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
            ),
            Container(
              margin: EdgeInsets.fromLTRB(21, 150, 21, 0),
              child: ListTile(
                  title: Text(
                    'Pending Payments',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1F271B),
                    ),
                  ),
                  subtitle: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 50,
                    ),
                    child: TextButton.icon(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.only(left: 0)),
                      ),
                      onPressed: () {}, 
                      icon: Icon(Icons.payment, color: Color(0xffF07D12),), 
                      label: Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                                'N50,000.00',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xffF07D12),
                                ),
                              ),
                        ),
                      )
                        
                      
                    ),
                  ),
                  trailing: Container(
                    height: 30,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      child: Text(
                        'Pay All',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff002DCC),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xffFFFFFF)),
                        side: MaterialStateProperty.all(
                          BorderSide(
                            style: BorderStyle.solid,
                            color: Color(0xff002DCC),
                          )
                        )
                      ),
                    ),
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 232, 0, 0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 155,
                  maxWidth: 161,
                ),
                child: Image.asset('assets/images/paymybills.png')
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(197, 232, 0, 0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 155,
                  maxWidth: 161,
                ),
                child: Image.asset('assets/images/visitors.png')
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 433, 0, 0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 155,
                  maxWidth: 161,
                ),
                child: Image.asset('assets/images/support.png')
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(197, 433, 0, 0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 155,
                  maxWidth: 161,
                ),
                child: Image.asset('assets/images/artisans.png')
              )
            ),
          ],
        ),
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