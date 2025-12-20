import 'package:flutter/material.dart';
import '../widgets/app_logo.dart';
import 'qr_scan_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogo(size: 160),
            const SizedBox(height: 20),
            const Text(
              'StarAttendance',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const QRScanScreen(),
                    ),
                  );

                  if (result != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('QR Scanned: $result')),
                    );
                  }
                },
                child: const Text('Scan Duty QR'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
