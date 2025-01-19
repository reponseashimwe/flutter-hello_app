import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widget/profile_header_widget.dart';
import '../widget/profile_info_widget.dart';
import '../widget/contact_info_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeaderWidget(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  ProfileInfoWidget(),
                  SizedBox(height: 24),
                  ContactInfoWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
