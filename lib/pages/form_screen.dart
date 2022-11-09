import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app2/Transitions.dart';
import 'package:test_app2/pages/login_page.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {

  String _name = "Prof. Hema A Murthy";
  String _EmpCode="";
  String _email = "";
  String _leave = "";
  String _days_credit = "";
  String _days_required = "";
  String _days_balance = "";
  DateTime _from = DateTime.now();
  DateTime _to = DateTime.now();
  String _reason = "";
  DateTime _arrangement = DateTime.now();
  String _theory_lab = "";
  String _alt_faculty = "Dr. N. Sreenath";
  String _alt_email = "";
  String _phoneNumber = "";
  String valueChoose = "";
  String dropdownvalue = "CL";
  var items =["CL","COL","EL","VL","Permission","ON DUTY"];
  var faculty=["Prof. Hema A Murthy",	"Dr. N. Sreenath",	"Dr. S. Swamynathan",	"Dr. Anbu Rathinavel",	"Mr. Nithish S",	"Dr. R. Srinivasan",	"Dr. A. Shahina",	"Mr. V. Sivamurugan",	"Dr. T. SreeSharmila",	"Dr. N. Bhalaji", 	"Dr. S. Chithra",	"Dr. S. Karthika",	"Dr. S. Mohanavalli",	"Dr. P. Vasuki",	"Dr. S. Poornima",	"Dr. N. Sripriya",	"Dr. K. R. Uthayan",	"Dr. I. Joe Louis Paul",	"Dr. V. Thanikachalam",	"Dr. S. Sasirekha",	"Dr. E. M. Malathy",	"Dr. T. Shanmugapriya",	"Dr. R. Swathika",	"Dr. R. Vinob Chander",	"Dr. N. Radha",	"Dr. A. Sandana Karuppan",	"Dr. V. Arulkumar",	"Dr. K. Kabilan",	"Dr. J. Sofia Jennifer", 	"Dr. K. S. Gayathri",	"Dr. S. Uma Maheswari",	"Dr. S. Vidhusha",	"Ms. J. K. Josephine Julina",	"Dr. Ashwinth Janarthanan"];
  var alt_faculty=["Prof. Hema A Murthy",	"Dr. N. Sreenath",	"Dr. S. Swamynathan",	"Dr. Anbu Rathinavel",	"Mr. Nithish S",	"Dr. R. Srinivasan",	"Dr. A. Shahina",	"Mr. V. Sivamurugan",	"Dr. T. SreeSharmila",	"Dr. N. Bhalaji", 	"Dr. S. Chithra",	"Dr. S. Karthika",	"Dr. S. Mohanavalli",	"Dr. P. Vasuki",	"Dr. S. Poornima",	"Dr. N. Sripriya",	"Dr. K. R. Uthayan",	"Dr. I. Joe Louis Paul",	"Dr. V. Thanikachalam",	"Dr. S. Sasirekha",	"Dr. E. M. Malathy",	"Dr. T. Shanmugapriya",	"Dr. R. Swathika",	"Dr. R. Vinob Chander",	"Dr. N. Radha",	"Dr. A. Sandana Karuppan",	"Dr. V. Arulkumar",	"Dr. K. Kabilan",	"Dr. J. Sofia Jennifer", 	"Dr. K. S. Gayathri",	"Dr. S. Uma Maheswari",	"Dr. S. Vidhusha",	"Ms. J. K. Josephine Julina",	"Dr. Ashwinth Janarthanan"];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  Widget _buildEmpCode() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,10),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'New Employee Code(eg. 20200200)',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          maxLength: 10,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Emp Code Required *';
            }
            return null;
          },
          onSaved: (value) {
            _EmpCode = value!;
          },
        ),
      ),
    );
  }

  Widget _buildAltEmail() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'Alternate Faculty Email',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "Enter email",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Email is Required *';
            }
            if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
              return 'Please enter a valid email Address';
            }
            return null;
          },
          onSaved: (value) {
            _alt_email = value!;
          },
        ),
      ),
    );
  }

  Widget _buildLeave() {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Nature of Leave",style: TextStyle(color:Colors.white,fontSize: 16)),
          Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: 140,
              height: 40,
              child: DropdownButton(
                value: dropdownvalue,
                style: const TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,0,0),
                      child: Text(items),
                    ),
                  );
                }).toList(),

                onChanged: (String? newValue)
                {
                  setState(()
                  {
                    dropdownvalue = newValue!;
                  }
                  );
                },
              ),
            ),

          ),
        ],
      ),
    );
  }

  Widget _buildPhoneNumber() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.phone,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'Mobile number',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "Enter phone number",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Phone number is Required *';
            }

            return null;
          },
          onSaved: (value) {
            _phoneNumber = value!;
          },
        ),
      ),
    );
  }

  Widget _buildDaysoncredit() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'No. of days/hours leave on Credit',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Required *';
            }

            return null;
          },
          onSaved: (value) {
            _days_credit = value!;
          },
        ),
      ),
    );
  }

  Widget _buildDaysleave() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'No. of days/hours leave/permission required',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Required *';
            }

            return null;
          },
          onSaved: (value) {
            _days_required = value!;
          },
        ),
      ),
    );
  }

  Widget _buildDaysbalance() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'No. of days/hours in balance',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Required *';
            }

            return null;
          },
          onSaved: (value) {
            _days_balance = value!;
          },
        ),
      ),
    );
  }

  Widget _buildFrom() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.datetime,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'From*',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Required *';
            }

            return null;
          },
          onSaved: (value) {
            _from = value! as DateTime;
          },
        ),
      ),
    );
  }

  Widget _buildTo() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.datetime,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'To*',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Required *';
            }

            return null;
          },
          onSaved: (value) {
            _to = value! as DateTime;
          },
        ),
      ),
    );
  }





  Widget _buildDoc() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.79,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Attach supporting \n Documents",
              style: TextStyle(color:Colors.white,fontSize: 14)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,20,0),
            child: Container(
                width:MediaQuery.of(context).size.width*0.25,
                height: 40,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.upload_file,
                    color: Colors.white,
                  ),
                  label: const Text("Add file",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                    ),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmail() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'Email',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "Enter email",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Email is Required *';
            }
            if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
              return 'Please enter a valid email Address';
            }
            return null;
          },
          onSaved: (value) {
            _email = value!;
          },
        ),
      ),
    );
  }

  Widget _buildReason() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'Reason',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          maxLength: 100,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Required *';
            }
            return null;
          },
          onSaved: (value) {
            _reason = value!;
          },
        ),
      ),
    );
  }


  Widget _buildArrangement() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.datetime,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'Alternate Arrangement Date',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Required *';
            }

            return null;
          },
          onSaved: (value) {
            _arrangement = value! as DateTime;
          },
        ),
      ),
    );
  }

  Widget _buildTheoryLab() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xe5003153),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30,10,30,20),
        child: TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(labelText: 'Theory/Lab',
            labelStyle: TextStyle(
                color:Colors.white
            ),
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            hintText: "your answer",
          ),
          maxLength: 100,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Required *';
            }
            return null;
          },
          onSaved: (value) {
            _theory_lab = value!;
          },
        ),
      ),
    );
  }

  Widget _buildName() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Name",style: TextStyle(color:Colors.white,fontSize: 16)),
          // const SizedBox(width: 20,),
          Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.61,
              height: 40,
              child: DropdownButton(
                value: _name,
                style: const TextStyle(color: Colors.black87),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: faculty.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB( 20,0,0,0),
                      child: Text(items),
                    ),
                  );
                }).toList(),

                onChanged: (String? newValue)
                {
                  setState(()
                  {
                    _name = newValue!;
                  }
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAltfaculty() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.79,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Faculty name",style: TextStyle(color:Colors.white,fontSize: 14)),
          const SizedBox(width: 10,),
          Container(
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.55,
              height: 40,
              child: DropdownButton(

                value: _alt_faculty,
                style: const TextStyle(color: Colors.black),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: alt_faculty.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,0,0),
                      child: Text(items),
                    ),
                  );
                }).toList(),

                onChanged: (String? newValue)
                {
                  setState(()
                  {
                    _alt_faculty = newValue!;
                  }
                  );
                },
              ),
            ),

          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
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
                  // Navigator.push(context,Slide(widget: const Faculty()));
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
                        'Leave Form',
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

              Column(
                children: <Widget>[
                  SvgPicture.asset('assets/form2.svg',fit: BoxFit.contain,),

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
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  <Widget>[
                            _buildName(),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                      margin: const EdgeInsets.all(10),
                      child: _buildEmpCode()
                  ),

                  Container(
                      margin: const EdgeInsets.all(10),
                      child: _buildEmail(),
                  ),

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
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  <Widget>[
                            _buildLeave(),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child: _buildPhoneNumber(),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child: _buildDaysoncredit(),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child: _buildDaysleave(),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child: _buildDaysbalance(),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child: _buildFrom(),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child:  _buildTo(),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child:  _buildReason(),
                  ),

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
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  <Widget>[
                            _buildDoc(),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child: _buildArrangement(),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child:  _buildTheoryLab(),
                  ),

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
                        padding: const EdgeInsets.fromLTRB(15,0,30,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  <Widget>[
                            _buildAltfaculty(),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    child:  _buildAltEmail(),
                  ),

                  const SizedBox(height:60),
                  RaisedButton(
                    color: const Color(0xe5003153),
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),                  onPressed: () {

                      print(MediaQuery.of(context).size.width);
                      print(MediaQuery.of(context).size.height);


                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    _formKey.currentState!.save();
                    //Send to API
                  },
                  ),
                  const SizedBox(height: 150,),
                ],

              ),

            ],
          ),
        ),
      ),
    );
  }
}
