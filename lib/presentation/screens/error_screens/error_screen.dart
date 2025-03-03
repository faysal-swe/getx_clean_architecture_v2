import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getx_clean_architecture_v2/utils/constants/app_images.dart';

class ErrorScreen extends StatelessWidget {
  final FlutterErrorDetails errorDetails;
  const ErrorScreen({super.key, required this.errorDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.errorImage),
            const SizedBox(height: 16),
            Text(
              kDebugMode
                  ? errorDetails.summary.toString()
                  : 'Oups! Something went wrong!',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
