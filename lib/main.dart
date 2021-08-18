
import 'dart:async';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'search.dart';

void main()
{

  runApp(MaterialApp(
    home: Gumaan(),
  ));


}
class  Gumaan extends StatefulWidget {

  @override
  GumaanState createState() => GumaanState();
}

class GumaanState extends State< Gumaan> {


  TextEditingController _emailTEC = TextEditingController();


  Widget build(BuildContext context)
  {


    return Scaffold(

        body: SingleChildScrollView(
            child: Stack(
              //      Column(
                children: [




                  Container(
                    margin: EdgeInsets.fromLTRB(20, 300, 0, 0),
                    child: TextField(
                      // obscureText: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'OpenSans',
                      ),
                      controller: _emailTEC,
                   //   keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        // prefixIcon: Icon(
                        //   Icons.lock,
                        //   color: Colors.white,
                        // ),
                        hintText: 'Enter your Password',
                        hintStyle: TextStyle(
                          color: Colors.white, // <-- Change this
                          fontSize: null,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff7cb1b6),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(20, 350, 0, 0),
                    child: ElevatedButton(
                      onPressed: ()
                      {
                        var _email = _emailTEC.text;
                      //  print(_email);
                      //   Search();


                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Search(title:_email),
                        )
                        );


                      },
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),





                ]
            )
        )
    );




  }
}