import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(66, 193, 0, 0),
              child: Text(
                'Login to your account',
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
              margin: EdgeInsets.fromLTRB(size.width * 0.08, 287, 0, 0),
              width: size.width * 0.4,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: TextButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xffD2D3D1),
                      )
                    ),
                    backgroundColor: MaterialStateProperty.all(Color(0xff002DCC)),
                  ),
                  onPressed: () {}, 
                  child: Text(
                    'Resident',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                    ),
                  )
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff002DCC),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.fromLTRB(size.width * 0.52, 287, 0, 0),
              width: size.width * 0.4,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: TextButton(
                  style: ButtonStyle(
                    // side: MaterialStateProperty.all(
                    //   BorderSide(
                    //     color: Color(0xff002DCC),
                    //   )
                    // ),
                    backgroundColor: MaterialStateProperty.all(Color(0xffFFFFFF)),
                  ),
                  onPressed: () {}, 
                  child: Text(
                    'Estate Manager',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA5A8A3),
                    ),
                  )
                ),
              ),
            ),
            Container(
              width: size.width * 0.84,
              height: 50,
              margin: EdgeInsets.fromLTRB(size.width * 0.08, 363, 0, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email Address',
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
              margin: EdgeInsets.fromLTRB(size.width * 0.08, 439, 0, 0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
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
              margin: EdgeInsets.fromLTRB(size.width * 0.68, 505, 0, 0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff121710),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(size.width * 0.08, 585, 0, 0),
              height: 55,
              width: size.width * 0.84,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff002DCC))
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/dashboard');
                  }, 
                  child: Text(
                    'Log Into Your Account',
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
        ),
      ),
    );
  }
}