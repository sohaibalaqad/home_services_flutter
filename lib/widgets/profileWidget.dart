import 'package:final_project/extensions/color.dart';
import 'package:final_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app-localization.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 317,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      '#6FC8FB'.toColor(),
                      '#346EDF'.toColor(),
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30.0, top: 40),
                    child: Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 0,
                right: 0,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 158,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Sohaib Y. Alaqad",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Gaza, Palestine",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                left: MediaQuery.of(context).size.width / 2 - 55,
                child: Image.asset('images/profile.png'),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 279,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      _showLanguageDialog(context); // Show the language selection dialog
                    },
                    title: Text(AppLocalizations.of(context)?.language ?? 'Language'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: '#C2CECE'.toColor(),
                    ),
                  ),
                  ListTile(
                    title: Text(AppLocalizations.of(context)?.my_rates ?? 'My Rates'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: '#C2CECE'.toColor(),
                    ),
                  ),
                  ListTile(
                    title: Text(AppLocalizations.of(context)?.contact_us ?? 'Contact us'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: '#C2CECE'.toColor(),
                    ),
                  ),
                  ListTile(
                    title: Text(AppLocalizations.of(context)?.share_app ?? 'Share App'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: '#C2CECE'.toColor(),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.login_outlined, color: '#AF8344'.toColor(),),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(AppLocalizations.of(context)?.sign_out ?? 'SIGN OUT',
                  style: TextStyle(
                    fontSize: 15,
                    color: '#0E4DFB'.toColor(),
                    fontWeight: FontWeight.w500
                  ),),
                )
              ],
            )
          ),

        ],
      ),
    );
  }
}

void _showLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: Text(AppLocalizations.of(context)?.select_language ?? 'Select Language'),
        children: [
          SimpleDialogOption(
            onPressed: () {
              _changeLanguage(context, 'en'); // Change to English
            },
            child: Text('English'),
          ),
          SimpleDialogOption(
            onPressed: () {
              _changeLanguage(context, 'ar'); // Change to Arabic
            },
            child: Text('العربية'),
          ),
        ],
      );
    },
  );
}

void _changeLanguage(BuildContext context, String languageCode) {
  Locale newLocale = Locale(languageCode);
  MyApp.setLocale(context, newLocale);
}
