import 'package:core/theme.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsTab extends StatefulWidget {
  SettingsTab({Key key}) : super(key: key);

  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SettingsList(
          darkBackgroundColor: getDarkColor(),
          sections: [
            SettingsSection(
              title: "General",
              tiles: [
                SettingsTile(
                  title: "Home currency",
                  subtitle: "EUR",
                  leading: Icon(Icons.build),
                  onPressed: (context) {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
