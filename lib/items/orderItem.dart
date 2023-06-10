import 'package:final_project/extensions/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';

class OrderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: '#EAEFFF'.toColor(),
      child: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 105,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)?.order_num ?? 'Order #52001',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '28 Nov 2019',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)?.service_type ?? 'Service Type: ',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
                            style: TextStyle(
                              color: '#0E4DFB'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 105,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)?.order_num ?? 'Order #52001',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '28 Nov 2019',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)?.service_type ?? 'Service Type: ',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
                            style: TextStyle(
                              color: '#0E4DFB'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 105,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)?.order_num ?? 'Order #52001',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '28 Nov 2019',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)?.service_type ?? 'Service Type: ',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
                            style: TextStyle(
                              color: '#0E4DFB'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 105,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)?.order_num ?? 'Order #52001',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '28 Nov 2019',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)?.service_type ?? 'Service Type: ',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
                            style: TextStyle(
                              color: '#0E4DFB'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 105,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)?.order_num ?? 'Order #52001',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '28 Nov 2019',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)?.service_type ?? 'Service Type: ',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
                            style: TextStyle(
                              color: '#0E4DFB'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 105,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)?.order_num ?? 'Order #52001',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '28 Nov 2019',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)?.service_type ?? 'Service Type: ',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
                            style: TextStyle(
                              color: '#0E4DFB'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 105,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)?.order_num ?? 'Order #52001',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '28 Nov 2019',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)?.service_type ?? 'Service Type: ',
                            style: TextStyle(
                              color: '#7F8FA6'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
                            style: TextStyle(
                              color: '#0E4DFB'.toColor(),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Nunito Sans',
                              fontSize: 12,
                            ),
                          ),
                        ],
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
