import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:final_project/extensions/color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isActive = true;
  CountryCode? _selectedCountry;
  bool _showPassword = false;
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                '#346EDF'.toColor(),
                '#6FC8FB'.toColor(),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(),
                    child: Image.asset(
                      "images/logo2.png",
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isActive = true;
                                  });
                                },
                                child: Text(
                                  "Service provider",
                                  style: TextStyle(
                                    color: _isActive
                                        ? "#5927FF".toColor()
                                        : "#646781".toColor(),
                                    fontSize: 15,
                                    fontFamily: "SFProText-Regular",
                                    decoration: _isActive
                                        ? TextDecoration.underline
                                        : null,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isActive = false;
                                  });
                                },
                                child: Text(
                                  "Customer",
                                  style: TextStyle(
                                    color: _isActive
                                        ? "#646781".toColor()
                                        : "#5927FF".toColor(),
                                    fontSize: 15,
                                    fontFamily: "SFProText-Regular",
                                    decoration: _isActive
                                        ? null
                                        : TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Phone Number',
                              prefixIcon: CountryCodePicker(
                                initialSelection: 'PS',
                                favorite: ['+970', 'PS'],
                                showCountryOnly: false,
                                showOnlyCountryWhenClosed: false,
                                showDropDownButton: true,
                                alignLeft: false,
                                textStyle: TextStyle(
                                  fontSize: 18,
                                ),
                                searchDecoration: InputDecoration(
                                  labelText: 'Search',
                                  hintText: 'Search',
                                  prefixIcon: Icon(
                                    Icons.search,
                                  ),
                                ),
                                flagWidth: 28.0,
                                padding: EdgeInsets.zero,
                              ),
                              enabledBorder:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: "#6236FF".toColor()),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: !_showPassword,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: "#6236FF".toColor(),
                                ),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Icon(
                                    _showPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 23,
                                    height: 23,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _rememberMe
                                          ? '#0E4DFB'.toColor()
                                          : Colors.grey,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _rememberMe = !_rememberMe;
                                        });
                                      },
                                      child: _rememberMe
                                          ? Icon(
                                              Icons.check,
                                              size: 14.0,
                                              color: Colors.white,
                                            )
                                          : null,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Remember Me",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {
                                  // Forgot Password Logic
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "New Member?",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Nunito Sans",
                                    ),
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                        "#0E4DFB".toColor(),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Nunito Sans",
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 55,
                                width: 164,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        '#346EDF'.toColor(), // Start color
                                        '#6FC8FB'.toColor(), // End color
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/home');
                                    },
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Nunito Sans",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Get Start Now',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Nunito Sans",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              )),
                        ),
                      ],
                    ),
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
