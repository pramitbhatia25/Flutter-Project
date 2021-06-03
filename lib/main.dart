import 'package:DJSRacing/widgets/Slide_Transition.dart';
import 'package:flutter/material.dart';
import 'screens/onboardPage_Racing.dart';
import 'package:DJSRacing/lists/home_Images.dart';
import 'package:flutter/cupertino.dart';



void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Racing',
      routes: {
        '/main': (context) => Home(),
        '/Racing': (context) => Racing(),

      }
  ));
}


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  PageController pageController;
  double pageOffset = 0;
  int currentpage = 0;
  int drawerno = 0;


  @override
  void initState() {
    pageController = PageController(viewportFraction:1);
    super.initState();
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page;
      });
    });
  }
  TextEditingController email = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        title: Text(
          '          Home',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20.0,
            fontFamily: 'Montserrat',
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.red),
            color: Colors.red,
            iconSize: 30.0,
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
          SizedBox(width: 20.0),
        ],
      ),
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 60.0, bottom: 60.0),
          color: Colors.black,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      drawerno = 0;
                    });
                  },
                  icon: Icon(Icons.arrow_forward, size: 25.0),
                  textColor: Colors.red,
                  color: Colors.black,
                  label: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.greenAccent[400],
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.red,
                  height: 20.0,
                  indent: 50,
                  endIndent: 50,
                ),
                RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      drawerno = 1;
                    });
                  },
                  icon: Icon(Icons.arrow_forward, size: 25.0),
                  textColor: Colors.red,
                  color: Colors.black,
                  label: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      "Formula Student",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        color: Colors.greenAccent[400],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.red,
                  height: 20.0,
                  indent: 50,
                  endIndent: 50,
                ),
                RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      drawerno = 2;
                    });
                  },
                  icon: Icon(Icons.arrow_forward, size: 25.0),
                  textColor: Colors.red,
                  color: Colors.black,
                  label: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      "Cars",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        color: Colors.greenAccent[400],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.red,
                  height: 20.0,
                  indent: 50,
                  endIndent: 50,
                ),
                RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      drawerno = 3;
                    });
                  },
                  icon: Icon(Icons.arrow_forward, size: 25.0),
                  textColor: Colors.red,
                  color: Colors.black,
                  label: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      "Our Team",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        color: Colors.greenAccent[400],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.red,
                  height: 20.0,
                  indent: 50,
                  endIndent: 50,
                ),
                RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      drawerno = 4;
                    });
                  },
                  icon: Icon(Icons.arrow_forward, size: 25.0),
                  textColor: Colors.red,
                  color: Colors.black,
                  label: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      "Mission Statement",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        color: Colors.greenAccent[400],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.red,
                  height: 20.0,
                  indent: 50,
                  endIndent: 50,
                ),
                RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      drawerno = 5;
                    });
                  },
                  icon: Icon(Icons.arrow_forward, size: 25.0),
                  textColor: Colors.red,
                  color: Colors.black,
                  label: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      "Sponsors",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        color: Colors.greenAccent[400],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  color: Colors.red,
                  height: 20.0,
                  indent: 50,
                  endIndent: 50,
                ),
                RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      drawerno = 6;
                    });
                  },
                  icon: Icon(Icons.arrow_forward, size: 25.0),
                  textColor: Colors.red,
                  color: Colors.black,
                  label: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Text(
                      "Media Handles",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.greenAccent[400],
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: decide(),
    );
  }

  Widget decide(){
    if(drawerno == 0)
      return home();
    else if(drawerno == 1)
      return formulaStudent();
  }
  Widget home(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 5, bottom:5),
            height:370.0,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentpage = value;
                });
              },
              itemBuilder: (context,i){
                return Transform.scale(
                  scale: 1.05,
                  child: Container(
                    padding: EdgeInsets.only(left:15, top:20, right: 15.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            paintings[i]['image'],
                            height: 300,
                            width: 700,
                            fit: BoxFit.cover,
                            alignment:
                            Alignment(-pageOffset.abs() + i, 0),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          List.generate(
                            paintings.length,
                                (index) => buildDot(index: index),
                          ),
                        ),
                        // Positioned(if text needed under pics
                        //   left: paintings[i]['left'],
                        //   bottom: paintings[i]['bottom'],
                        //   right: paintings[i]['right'],
                        //   child: Text(
                        //     paintings[i]['name'],
                        //     style: TextStyle(
                        //       fontFamily: 'Montserrat',
                        //       color: Colors.white,
                        //       fontSize: paintings[i]['size'],
                        //       fontWeight: FontWeight.bold,
                        //       fontStyle: FontStyle.italic,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                );
              },
              itemCount: paintings.length,
              controller: pageController,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "ABOUT US",
            style: TextStyle(
              fontFamily: 'Montserrat',
              color:Colors.white,
              letterSpacing: 3.0,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          Divider(
            thickness: 2.0,
            color: Colors.red,
            height: 20.0,
            indent: 50,
            endIndent: 50,
          ),
          Text(
            "DJS Racing is the Formula Student team of Dwarkadas J. Sanghvi College of Engineering, Vile Parle, Mumbai.\nWe are a team of 120 students representing our college at Formula Student Competitions in India as well as abroad, where we design and manufacture Formula style racecar prototypes.\nSince the year 2012, our team has been constantly pushing the limits in the field of combustion.\nThe world is changing, with companies making strides towards sustainable development.\nWe at DJSR embrace change, and have thus made the decision to go fully electric from this season.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color:Colors.white,
              height: 1.25,
              fontFamily: 'Montserrat',
              letterSpacing: 1.0,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height:40.0),
          Divider(
            thickness: 5.0,
            color: Colors.red,
            height: 20.0,
          ),
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            color:Colors.black,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // add video
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Divider(
            thickness: 5.0,
            color: Colors.red,
            height: 20.0,
          ),
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            color:Colors.deepOrange[500],
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  "SUBSCRIBE TO OUR NEWSLETTER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 5.0,
            color: Colors.red,
            height: 20.0,
          ),
          Container(
            height: 150.0,
            width: MediaQuery.of(context).size.width,
            color:Colors.white,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10.0),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * .025),
                    Container(
                      height:70,
                      width: MediaQuery.of(context).size.width * .69375,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        controller: email,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top:20.0, bottom:20.0),
                          icon: Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: Icon(Icons.alternate_email_outlined, color: Colors.deepOrange[500]),
                          ),
                          hintText: "Email Address",
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .025),
                    Container(
                      width: MediaQuery.of(context).size.width * .23125,
                      height: 70,
                      child: Builder(
                        builder: (context) =>
                            Center(
                              child: RaisedButton(
                                color: Colors.orange[400],
                                onPressed: () {
                                  if(email.text == "pramitbhatia25@gmail.com" ||email.text == "1")
                                  {
                                    Scaffold.of(context).showSnackBar(SnackBar(
                                      backgroundColor: Colors.black,
                                      content: Text('Success', style: TextStyle(color: Colors.red, letterSpacing: 1.0, fontSize: 20.0, fontWeight: FontWeight.w800)),
                                      duration: Duration(seconds: 2),
                                    ),
                                    );
                                  }
                                  else
                                  {
                                    Scaffold.of(context).showSnackBar(SnackBar(
                                      backgroundColor: Colors.black,
                                      content: Text('Incorrect Details Entered', style: TextStyle(color: Colors.red, letterSpacing: 1.0, fontSize: 20.0, fontWeight: FontWeight.w800)),
                                      duration: Duration(seconds: 2),
                                    ),
                                    );
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                                  child: Text(
                                    "GO!",
                                    style: TextStyle(
                                      height: 1.0,
                                      fontSize: 25.0,
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .025),
                  ],
                ),
                SizedBox(height:20.0),
                Text('@CopyRight DJS RACING 2021', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Montserrat')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget formulaStudent(){
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*.5,
              width: MediaQuery.of(context).size.width*.9,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.red),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: InteractiveViewer(
                  panEnabled: true,
                  minScale: 1,
                  child: Image.asset(
                    'lib/images/formulastudenttitle.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Formula Student",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color:Colors.white,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.red,
                    height: 20.0,
                    indent: 50,
                    endIndent: 50,
                  ),
                  Text(
                    "The world’s biggest competition for engineers is HERE!.\nEvery year competitions are held all across the globe. Founded by the Society of Automotive Engineers in 1981, the first competition in Europe took place in 1998.\nAt present, there are more than 600 teams from universities all over the world competing with their self-constructed race cars.\nThe goal is to develop and provide a platform for student engineers to experience, build, and learn.\nIt offers a unique way to test students’ theoretical knowledge in a practical context.\nStudents gain and develop skills such as engineering, project management and team work.\nThe winner is not necessarily the team with the fastest car, but the one with the best package regarding construction, performance, financial planning and sales arguments.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:Colors.white,
                      height: 1.375,
                      fontFamily: 'Montserrat',
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    "About The Competition",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color:Colors.black,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: Colors.red,
                    height: 20.0,
                    indent: 50,
                    endIndent: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentpage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentpage == index ? Colors.red : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
