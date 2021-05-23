import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent[400],
          title: Image.asset(
            'assets/pawit.jpeg',
            fit: BoxFit.fill,
            height: 150,
          ),
          automaticallyImplyLeading: false,
          toolbarHeight: 150,
        ),
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            children: <Widget>[
              SizedBox(height: 20.0),
              Text(
                'Request Details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepOrangeAccent[400],
                  fontSize: 32.0,
                ),
              ),
              SizedBox(height: 25.0),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(
                    FontAwesomeIcons.userCircle,
                    color: Colors.deepOrangeAccent,
                  ),
                  hintText: 'Enter your complete Name',
                  labelText: 'Name',
                ),
              ),
              new TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      FontAwesomeIcons.phone,
                      color: Colors.deepOrangeAccent,
                    ),
                    hintText: 'Enter your Phone Number',
                    labelText: 'Phone',
                  ),
                  keyboardType: TextInputType.number),
              new TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(
                    FontAwesomeIcons.addressBook,
                    color: Colors.deepOrangeAccent,
                  ),
                  hintText: 'Enter your complete Address',
                  labelText: 'Address',
                ),
                keyboardType: TextInputType.streetAddress,
              ),
              SizedBox(height: 25.0),
              new TextFormField(
                decoration: const InputDecoration(
                    icon: const Icon(
                      FontAwesomeIcons.envelope,
                      color: Colors.deepOrangeAccent,
                    ),
                    hintText: 'Please specify your Request',
                    labelText: 'Request Letter',
                    helperText: 'Make sure your request is Specific'),
                maxLines: 3,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 40.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 1.4 * (MediaQuery.of(context).size.height / 20),
                    width: 5 * (MediaQuery.of(context).size.width / 10),
                    margin: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        "Request",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: MediaQuery.of(context).size.height / 40,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
