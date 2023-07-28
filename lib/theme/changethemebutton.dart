import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hello_world/theme/themeprovider.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      activeColor: Colors.amber,
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        showDialog(
            context: context,
            builder: (context) {
              return const Center(child: CircularProgressIndicator());
            });
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
        Navigator.of(context).pop();
      },
    );
  }
}
