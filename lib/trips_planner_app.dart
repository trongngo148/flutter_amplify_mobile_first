import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_amplify_app/common/navigation/router/router.dart';
import 'package:flutter_amplify_app/common/utils/colors.dart' as constants;

class TripsPlannerApp extends StatelessWidget {
  const TripsPlannerApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp.router(
        routerConfig: router,
        builder: Authenticator.builder(),
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: constants.primaryColor)
                  .copyWith(
            background: const Color(0xff82CFEA),
          ),
        ),
      ),
    );
  }
}
