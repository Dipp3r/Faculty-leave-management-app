
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:custom_switch_button/custom_switch_button.dart';
// import '../main.dart';
// import '../Transitions.dart';



class Settings extends StatefulWidget {
   const Settings({key});
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    // var screenHeight = MediaQuery.of(context).size.height ;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
    backgroundColor: const Color(0xe5003153),
    brightness: Brightness.light,
    elevation: 0,
    title: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)
                ),
                elevation: 3,
                primary: Colors.white,
                fixedSize: const Size(10, 10),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child:const Icon(Icons.arrow_back,size: 20,color: Color(0xe5003040))
            ),
          ],
        ),
    ),
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xe5003153),
                    borderRadius:
                     BorderRadius.vertical(bottom: Radius.circular(30))),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                     Padding(
                      padding:  EdgeInsets.all(25.0),
                      child:  Text(
                        'Settings',
                        style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.normal,fontFamily: 'Neucha'),
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            Container(
              child:Column(
                children: <Widget>[
                  SvgPicture.asset('assets/settings.svg',fit: BoxFit.contain,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,15,10,0),
                    child: Container(
                      height:75,
                      decoration: BoxDecoration(
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xe5003153),
                        // backgroundBlendMode: BlendMode.darken,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text('Send App Feedback',style: TextStyle(color:Colors.white,fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Paduak_bold'),),
                            // const SizedBox(width: 155,),
                            IconButton(onPressed: ()
                            {
                              HapticFeedback.heavyImpact();
                            },
                                splashColor: Colors.white,
                                splashRadius: 30,
                                icon: const Icon(Icons.arrow_forward_ios_outlined,size: 25,color: Colors.white,))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,15,10,0),
                    child: Container(
                      height:75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xe5003153),
                        // backgroundBlendMode: BlendMode.darken,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text('Contact & FAQ',style: TextStyle(color:Colors.white,fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Paduak_bold'),),
                            IconButton(onPressed: (){
                              HapticFeedback.heavyImpact();
                            }, splashColor: Colors.white,
                                splashRadius: 30,
                                icon: const Icon(Icons.arrow_forward_ios_outlined,size: 25,color: Colors.white,))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,15,10,0),
                    child: Container(
                      height:75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xe5003153),
                        // backgroundBlendMode: BlendMode.darken,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text('Rate this App',style: TextStyle(color:Colors.white,fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Paduak_bold'),),
                            IconButton(onPressed: ()
                            {
                              HapticFeedback.heavyImpact();
                            },
                                splashColor: Colors.white,
                                splashRadius: 30,
                                icon: const Icon(Icons.arrow_forward_ios_outlined,size: 25,color: Colors.white,))
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height:60),
                  const Text('Terms of Use  |  Privacy Policy',style:TextStyle(color: Color(0xff0F7995))),
                  const SizedBox(height:20),
                  const Text('You are using Staff leave Planner app',style:TextStyle(color: Colors.grey,fontSize: 11,)),
                  const SizedBox(height:10),
                  const Text('Version 1.3.5',style:TextStyle(color: Colors.grey,fontSize: 11,)),
                  const SizedBox(height:80),
                ],

              ),
            ),

            ],
          ),
        ),
      ),
    ),
    );
  }

}


class Notif extends StatelessWidget {
  const Notif({key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height ;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(screenHeight.toString(),),
        ),
      ),
    );
  }
}