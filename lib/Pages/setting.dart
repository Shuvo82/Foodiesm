import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';
import 'package:settings_ui/settings_ui.dart';

void main() {
  runApp(Settings());
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  void initState() {
    super.initState();
    dark_mode_selector();
  }
  bool isDarkModeEnabled = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: const Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                  //builder: (context) => DetailsPage( data: pokemon_map),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Text('Settings'),
        ),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: const Text('Common'),
              tiles: <SettingsTile>[
                // SettingsTile.navigation(
                //   leading: const Icon(Icons.language),
                //   title: const Text('Language'),
                //   value: const Text('English'),
                // ),
                SettingsTile.switchTile(
                  onToggle: (value) {
                    DarkMode();
                  },
                  initialValue: isDarkModeEnabled,
                  leading: const Icon(Icons.format_paint),
                  title: const Text('Dark mode'),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {
                    Fluttertoast.showToast(
                        msg: isDarkModeEnabled
                            ? "Dark mode is enabled"
                            : "Dark mode is disabled",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  initialValue: false,
                  leading: const Icon(Icons.notifications),
                  title: const Text('Notifications'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> DarkMode() async {
    final SharedPreferences prefs = await _prefs;

    setState(() {
      if (isDarkModeEnabled == true) {
        prefs.setBool('isDarkModeEnabled', false);
        isDarkModeEnabled = false;
        //print("Dark Mode is Disabled");
      } else {
        prefs.setBool('isDarkModeEnabled', true);
        isDarkModeEnabled = true;
        //print("Dark Mode is Enabled");
      }
    });
  }

  dark_mode_selector() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool dark_mode = (prefs.getBool('isDarkModeEnabled') ?? false);
    print(dark_mode);
    if (dark_mode) {
      setState(() {
        isDarkModeEnabled = true;
      });
    } else {
      setState(() {
        isDarkModeEnabled = false;
      });
    }
  }
}
