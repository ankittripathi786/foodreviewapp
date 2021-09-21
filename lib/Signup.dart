import 'dart:ui';

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  var _name = TextEditingController();
  var _contact = TextEditingController();
  var _email = TextEditingController();
  var _fssaiCode = TextEditingController();
  var _address = TextEditingController();
  var _description = TextEditingController();

  clearData() {
    _name.clear();
    _contact.clear();
    _email.clear();
    _fssaiCode.clear();
    _address.clear();
    _description.clear();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _name.dispose();
    _contact.dispose();
    _email.dispose();
    _fssaiCode.dispose();
    _address.dispose();
    _description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(14.0),
            ),
            alignment: Alignment.center,
            //
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/food_back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                  ),
                  Image.asset(
                    "assets/imgs/food.png",
                    width: 300,
                    height: 300,
                  ),
                  Form(
                      key: this._formKey,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _name,
                            keyboardType: TextInputType.text,
                            autofocus: true,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "You can't have an empty name.";
                              }

                              if (value.length < 2) {
                                return "Name must be more than one character.";
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              hintText: 'Name',
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _contact,
                            autofocus: true,
                            keyboardType: TextInputType.phone,
                            // onSaved: (String? val) =>
                            //     setState(() => _contact = val),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "You can't have an empty Contact Number.";
                              }

                              if (value.length < 10) {
                                return "Contact Number must be 10 to 11 characters.";
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              hintText: 'Contact Number',
                              prefixIcon: Icon(Icons.phone),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                            controller: _email,
                            // onSaved: (String? val) =>
                            //     setState(() => _email = val),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "You can't have an empty Email ID.";
                              }
                              if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                                return "Email ID must be in proper format.";
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              hintText: 'Email ID',
                              prefixIcon: Icon(Icons.email_rounded),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autofocus: true,
                            keyboardType: TextInputType.text,
                            controller: _fssaiCode,
                            // onSaved: (String? val) =>
                            //     setState(() => _fssaiCode = val),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "You can't have an empty FSSAI Code.";
                              }

                              if (value.length < 14) {
                                return "Contact Number must be 14 characters.";
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              hintText: 'FSSAI Code',
                              prefixIcon: Icon(Icons.food_bank),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autofocus: true,
                            maxLines: 3,
                            keyboardType: TextInputType.streetAddress,
                            // onSaved: (String? val) =>
                            //     setState(() => _address = val),
                            controller: _address,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "You can't have an empty Address.";
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              hintText: 'Address',
                              prefixIcon: Icon(Icons.map_rounded),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autofocus: true,
                            maxLines: 7,
                            keyboardType: TextInputType.text,
                            // onSaved: (String? val) =>
                            //     setState(() => _description = val),
                            controller: _description,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "You can't have an empty Description Box.";
                              }
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0)),
                              hintText: 'Description',
                              prefixIcon: Icon(Icons.description_rounded),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange[200],
                              onPrimary: Colors.black,
                              shadowColor: Colors.orangeAccent,
                              elevation: 5,
                            ),
                            onPressed: () {
                              _formKey.currentState!.validate()
                                  ? showDialog(
                                      context: context,
                                      builder: (ctx) => AlertDialog(
                                        title: Text(
                                            "Data After Submiting the Form"),
                                        content: Text(
                                            "Name:- ${_name.text}\nContact:- ${_contact.text}\nEmail ID :- ${_email.text}\nFSSAI Code:- ${_fssaiCode.text}\nAddress:- ${_address.text}\nDescription :- ${_description.text}"),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(ctx).pop();
                                              clearData();
                                            },
                                            child: Text("okay"),
                                          ),
                                        ],
                                      ),
                                    )
                                  : ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Please Solve These Problems!!')));
                            },
                            label: Text('Sign Up'),
                            icon: Icon(Icons.present_to_all),
                          ),
                        )
                      ])),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
