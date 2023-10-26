import 'package:flutter/material.dart';
import 'package:portfolio_website/Screens/resume.dart';

import 'package:typewritertext/typewritertext.dart';

class new_pg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Title Bar Example',
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // resizeToAvoidBottomInset: mounted,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(213, 245, 245, 245),   //(213, 245, 245, 245),
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/rohandroid.png', // Replace with your logo image path
                height: 40, // Adjust the logo height as needed
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return resume();
                      },
                    ),
                  ),
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(width: 38),
                GestureDetector(
                  onTap: () {
                    // Handle About click
                  },
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(width: 38),
                GestureDetector(
                  onTap: () {
                    // Handle Contact click
                  },
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),

                SizedBox(width: 38),
                GestureDetector(
                  onTap: () {
                    // Handle Contact click
                  },
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 2,
                          offset: Offset(4.0,4.0),
                          spreadRadius: 0.5,
                        )
                      ]
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      // Handle Contact click
                    },
                    child:  Image.asset(
                      'assets/images/resume.png', // Replace with your logo image path
                      height: 40, // Adjust the logo height as needed
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body:SingleChildScrollView(
        // child: InteractiveViewer(
        child:   Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.all(20.0),
                child: Stack(
                  children: <Widget>[
                    ColumnWithSpace(
                      Container(
                        width: 1400.0,
                        height: 800.0,

                        // child: Center(
                        //   child: Text('Container 1'),
                        // ),
                      ),
                    ),

                    Positioned(
                      right: 0.0,
                      bottom: 0.0,
                      // Adjust this value as needed
                      child: ColumnWithSpace(
                        Container(
                          decoration:
                          BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                            ),
                          ),
                          width: 1400.0,
                          height: 415.0,
                          // color: Colors.orange,

                        ),
                      ),
                    ),



                    Positioned(
                      right: 0.0,
                      bottom: 0.0,
                      // Adjust this value as needed
                      child: ColumnWithSpace(
                        Container(
                          decoration:
                          BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              topRight:Radius.circular(50.0) ,
                              topLeft: Radius.circular(50.0),
                            ),
                          ),
                          width: 650.0,
                          height: 620.0,
                          // color: Colors.orange,

                        ),
                      ),
                    ),

                    Positioned(
                      right: 0.0,
                      bottom: 0.0,
                      // Adjust this value as needed
                      child: ColumnWithSpace(
                        Container(
                          width: 650.0,
                          height: 620.0,
                          child: Image.asset(
                            'assets/images/boy_face.png', // Replace with your logo image path
                            height: 85,
                            width: 55,// Adjust the logo height as needed
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 90.0),
                      child: ColumnWithSpace(
                        TypewriterTextAnimation(),
                      ),
                    ),
                  ],
                ),

              ),

              SizedBox(height: 20),



              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 1400,
                  height: 500.0,
                  color: Colors.green,
                  child: Center(
                    child:  Text('Container 3'),
                  ),
                ),
              ),

              SizedBox(height: 30),




              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 1400,
                  height: 500.0,
                  color: Colors.red,
                  child: Center(
                    child: Text('Container 3'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





class ColumnWithSpace extends StatelessWidget {
  final Widget child;

  ColumnWithSpace(this.child);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child,
        SizedBox(height: 5.0), // Add a 10-pixel gap between each container
      ],
    );
  }
}





////////// TEXT ANIMATION /////////
class TypewriterTextAnimation extends StatefulWidget {
  @override
  _TypewriterTextAnimationState createState() => _TypewriterTextAnimationState();
}

class _TypewriterTextAnimationState extends State<TypewriterTextAnimation> {
  String text = "";
  int index = 0;

  @override
  void initState() {
    super.initState();
    _startTypewriterAnimation();
  }

  void _startTypewriterAnimation() {
    const String targetText = "HEY,  I'M ROHAN \nNISHAD     ";
    if (index < targetText.length) {
      setState(() {
        text = targetText.substring(0, index + 1);
        index++;
      });
      Future.delayed(Duration(milliseconds: 100), _startTypewriterAnimation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 130.0, fontFamily: 'jomolhari'), //, fontWeight: FontWeight.bold
    );
  }
}















