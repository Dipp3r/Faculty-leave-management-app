import 'package:flutter/material.dart';
import 'package:test_app2/Transitions.dart';
import 'form_screen.dart';
import 'package:test_app2/widgets/wave_widget.dart';
// import 'package:test_app2/main.dart';


class Admin extends StatefulWidget {
  const Admin({key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  String _name = "";
  String _password = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int count=0;

  Widget _buildName() {
    return TextFormField(
      cursorColor: Colors.black54,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        color: Colors.black54,
      ),
      decoration: const InputDecoration(labelText: 'Username',
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color:Colors.black54
        ),
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        hintText: "Enter Username",
      ),
      maxLength: 25,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Username is Required *';
        }
        return null;
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(labelText: 'Password',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color:Colors.black54,
        ),
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        hintText: "Enter Password",
      ),
      style: const TextStyle(color: Colors.black54),
      keyboardType: TextInputType.visiblePassword,

      cursorColor: Colors.teal,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Password is Required *';
        }

        return null;
      },
      onSaved: (value) {
        _password = value!;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    var screenHeight = MediaQuery.of(context).size.height ;
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,

      //appbar
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title:
        const Text('Admin',
          style: TextStyle(
            // fontWeight: FontWeight.w500,
            // color: Colors.white,
            fontFamily: 'Neucha',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xe5003153),
        elevation: 4.0,
      ),

      //body
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: const Color(0xe5003153),border: Border.all(width:0)),
                height: size.height - 500,
                // color: const Color(0xe5003153),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOutQuad,
                top: keyboardOpen ? -size.height / 2.7 : 0.0,
                child: WaveWidget(
                  size: size,
                  yOffset: size.height / 3.2,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xe5003153),
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(blurRadius: 2, color: Color(0xe5003153), spreadRadius: 2)],
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/admin.png'),
                        radius: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    _buildName(),
                    _buildPassword(),
                    const SizedBox(height: 80),
                    ElevatedButton.icon(
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          _formKey.currentState!.save();

                        },
                        icon: const Icon(
                          Icons.login_rounded,
                          color: Colors.white,
                        ),
                        label: const Text('Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xd5003153),
                        )
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}


class Faculty extends StatefulWidget {
  const Faculty({key});

  @override
  State<Faculty> createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  String _name = "";
  String _password = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int count=0;

  Widget _buildName() {
    return TextFormField(
      cursorColor: Colors.black54,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        color: Colors.black54,
      ),
      decoration: const InputDecoration(labelText: 'Username',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
            color:Colors.black54
        ),
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        hintText: "Enter Username",
      ),
      maxLength: 25,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Username is Required *';
        }
        return null;
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(labelText: 'Password',
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color:Colors.black54,
        ),
        hintStyle: TextStyle(
          color: Colors.black54,
        ),
        hintText: "Enter Password",
      ),
      style: const TextStyle(color: Colors.black54),
      keyboardType: TextInputType.visiblePassword,

      cursorColor: Colors.teal,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Password is Required *';
        }

        return null;
      },
      onSaved: (value) {
        _password = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    var screenHeight = MediaQuery.of(context).size.height ;
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,

      //appbar
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title:
        const Text('Faculty',
          style: TextStyle(
            // fontWeight: FontWeight.w500,
            // color: Colors.white,
            fontFamily: 'Neucha',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xe5003153),
        elevation: 4.0,
      ),

      //body
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: size.height - 500,
                color: const Color(0xe5003153),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOutQuad,
                top: keyboardOpen ? -size.height / 2.7 : 0.0,
                child: WaveWidget(
                  size: size,
                  yOffset: size.height / 3.2,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xe5003153),
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(blurRadius: 2, color: Color(0xe5003153), spreadRadius: 2)],
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/faculty.png'),
                        radius: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,0,10,0),
            child: Form(
              key: _formKey,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  _buildName(),
                  _buildPassword(),
                  const SizedBox(height: 100),
                  ElevatedButton.icon(
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        _formKey.currentState!.save();
                        Navigator.push(context, Slide1(widget: const Page2()));

                      },
                      icon: const Icon(
                        Icons.login_rounded,
                        color: Colors.white,
                      ),
                      label: const Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xd5003153),
                      )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const FormScreen(),
    );
  }
}
