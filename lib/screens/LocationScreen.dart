import 'package:country_code_picker/country_code_picker.dart';
import 'package:final_project/components/tapBarClipComponent.dart';
import 'package:final_project/extensions/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: TapBarClip(title: 'Location'),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 163,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: FlutterMap(
                                  options: MapOptions(
                                    center: LatLng(31.351733, 34.303565),
                                    zoom: 13.0,
                                  ),
                                  children: [
                                    TileLayer(
                                      urlTemplate:
                                          'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                      subdomains: ['a', 'b', 'c'],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Expanded(
                              child: Container(
                                height: 220,
                                child: Column(
                                  children: [
                                    TextField(
                                      keyboardType: TextInputType.multiline,
                                      maxLines: 4,
                                      minLines: 4,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0E4DFB),
                                          ),
                                        ),
                                        hintText:
                                            'More Details About Location ...',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    TextField(
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
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide()),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: "#6236FF".toColor()),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 305,
                        height: 55,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/done');
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
