import 'package:flutter/material.dart';
import 'package:untitled/helpers/adaptive_sizes.dart';
import 'package:untitled/navigation.dart';
import 'package:untitled/strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final AdaptiveSizes sizes;
        if (constrains.maxWidth <= 400.0) {
          sizes = AdaptiveSizes.mobile;
        } else {
          if (constrains.maxWidth <= 800.0) {
            sizes = AdaptiveSizes.tablet;
          } else {
            sizes = AdaptiveSizes.desktop;
          }
        }
        return Scaffold(
          body: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Strings.title,
                    style: TextStyle(
                      fontSize: sizes.titleSize,
                    ),
                  ),
                  SizedBox(height: sizes.paddings),
                  ConstrainedBox(
                    constraints: sizes.textFieldSize,
                    child: TextField(
                      decoration: InputDecoration(hintText: Strings.email),
                    ),
                  ),
                  SizedBox(height: sizes.paddings),
                  ConstrainedBox(
                    constraints: sizes.textFieldSize,
                    child: TextField(
                      decoration: InputDecoration(hintText: Strings.password),
                    ),
                  ),
                  SizedBox(height: sizes.paddings),
                  ConstrainedBox(
                    constraints: sizes.bigButtonSize,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(NavigationRoutes.homePage);
                      },
                      child: Text(Strings.logIn),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
