import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(66, 193, 0, 0),
            child: Text(
              'Set up your password',
              style: TextStyle(
                fontSize: 18,
                // fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(66, 226, 0, 0),
            child: Text(
              'Enter your details to login to your account',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff787D76),
              ),
            ),
          ),
          Container(
            width: size.width * 0.84,
            height: 50,
            margin: EdgeInsets.fromLTRB(size.width * 0.08, 291, 0, 0),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(8),
            // ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                // filled: true,
                // fillColor: Color(0xffFFFFFF),
                hintText: 'New Password',
                suffixIcon: Icon(
                  Icons.visibility, 
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xffD2D3D1),
                  ),
                ),
              ),
            )
          ),
          Container(
            width: size.width * 0.84,
            height: 50,
            margin: EdgeInsets.fromLTRB(size.width * 0.08, 382, 0, 0),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(8),
            // ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                // filled: true,
                // fillColor: Color(0xffFFFFFF),
                hintText: 'Confirm Password',
                suffixIcon: Icon(
                  Icons.visibility, 
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xffD2D3D1),
                  ),
                ),
              ),
            )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(size.width * 0.08, 522, 0, 0),
            height: 55,
            width: size.width * 0.84,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff002DCC))
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                }, 
                child: Text(
                  'Set Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF)
                  ),
                )
              ),
            ),
          )
        ],
      )
    );
  }
}