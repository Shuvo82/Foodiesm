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
    single_mode_selector();
  }
  bool isDarkModeEnabled = false;
  bool isSingleModeEnabled=false;


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
                    single_mode();
                  },
                  initialValue: isSingleModeEnabled,
                  leading: const Icon(Icons.calendar_view_day),
                  title: const Text('Hide vegetables'),
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




  Future<void> single_mode() async {
    final SharedPreferences prefs = await _prefs;

    setState(() {
      if (isSingleModeEnabled == true) {
        prefs.setBool('single_mode', false);
        isSingleModeEnabled = false;
        //print("Dark Mode is Disabled");
      } else {
        prefs.setBool('single_mode', true);
        isSingleModeEnabled = true;
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


  single_mode_selector() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool single_mode = (prefs.getBool('single_mode') ?? false);
    print(single_mode);
    if (single_mode) {
      setState(() {
        isSingleModeEnabled = true;
      });
    } else {
      setState(() {
        isSingleModeEnabled = false;
      });
    }
  }
}
