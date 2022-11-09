// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:test_app2/pages/login_page.dart';
import 'pages/Icon_functions.dart';
import 'Transitions.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Roboto_regular'),
  home: const HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: isChecked,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: IconButton(onPressed:(){
              showDialog(context: context,
                builder: (context) =>  AlertDialog(
                  title:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [

                      Text('Notifications',
                          style:TextStyle(color: Colors.black54)
                      ),
                      SizedBox(width:20),
                      Icon(Icons.notification_important,color: Colors.deepOrange,),
                    ],
                  ),
                  content: const SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.all(10.0),
                      child:  Text(
                          'Currently there is no notification',
                          style:TextStyle(fontSize: 13,
                              fontFamily: 'Gloria')),

                    ),
                  ),
                  actions: [
                    TextButton(onPressed: () => Navigator.pop(context), child: const Text('ok'))
                  ],

                ),
              );

            },
                icon: const Icon(Icons.notifications,size: 25,color:Colors.black87,)
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: ()
            {
              Navigator.push(context, Bouncy(widget: const Settings()));
            },
          ),
        ],
      ),
      ),


      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'SSN',
                      style: TextStyle(color: Colors.black87, fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'Righteous'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Staff Leave Planner',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,15,10,0),
                      child: Container(
                        height:75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xe5003153),
                          backgroundBlendMode: BlendMode.darken,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text('Notifications',style: TextStyle(color:Colors.white,fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Paduak_bold'),),
                              // const SizedBox(width: 210,),
                              GestureDetector(
                                onTap: (){
                                  setState((){
                                    isChecked= !isChecked;
                                  });
                                },
                                child: Center(
                                  child: CustomSwitchButton(
                                    buttonHeight: 30,
                                    buttonWidth: 50,
                                    indicatorWidth: 26,
                                    backgroundColor: Colors.teal,
                                    unCheckedColor: Colors.white,
                                    animationDuration: const Duration(milliseconds: 200),
                                    checkedColor: Colors.white,
                                    checked: isChecked,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SvgPicture.asset("assets/faculty.svg",fit: BoxFit.contain ,),
                    SizedBox(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/image8.png'),
                          promoCard('assets/image1.png'),
                          promoCard('assets/image7.png'),
                          promoCard('assets/image2.png'),
                          promoCard('assets/image6.png'),
                          promoCard('assets/image9.png'),
                          promoCard('assets/image10.png'),
                          promoCard('assets/image3.png'),
                          promoCard('assets/image11.png'),
                          promoCard('assets/image5.png'),
                          promoCard('assets/image13.png'),
                          promoCard('assets/image14.png'),
                          promoCard('assets/image4.png'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding:  EdgeInsets.fromLTRB(30,30,30,0),
                      child:  Center(
                        child: Text(
                          'You are?',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontFamily: 'Roboto_regular',
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 140),
                      child:  Divider(
                        height: 20,
                        thickness: 3,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            elevation: 8,
                            borderRadius: BorderRadius.circular(45),
                            // shape: const CircleBorder(),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color(0xff426178),
                            child: InkWell(
                              highlightColor: Colors.white,
                              splashColor: Colors.white,
                              onTap: (){
                                Navigator.push(context,Slide(widget: const Admin()));
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Ink.image(
                                      image: const AssetImage("assets/admin.png"),
                                      fit: BoxFit.cover,
                                      height:90,
                                      width:90,
                                    ),
                                    const SizedBox(width: 6,),
                                    const Text('Admin',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Roboto',fontSize: 20),)
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Material(
                            elevation: 8,
                            borderRadius: BorderRadius.circular(45),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: const Color(0xff5BB7E5),
                            child: InkWell(
                              splashColor: Colors.white,
                              highlightColor: Colors.white,
                              splashFactory: InkSplash.splashFactory,
                              onTap: (){
                                Navigator.push(context,Slide(widget: const Faculty()));
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Ink.image(
                                      image: const AssetImage("assets/faculty.png"),
                                      fit: BoxFit.cover,
                                      height:90,
                                      width:90,
                                    ),
                                    const SizedBox(width: 6,),
                                    const Text('Faculty',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Roboto',fontSize: 20),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/image12.png')),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                stops: const [
                                  0.01,
                                  0.9
                                ],
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.2)
                                ]),
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(height: 50),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.3 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}