import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({super.key});

  void _copyToClipboard(BuildContext context, String title, String text) {
    Clipboard.setData(ClipboardData(text: text));
    final snackBar = SnackBar(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(text),
        ],
      ),
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.black54,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => _copyToClipboard(context, 'GitHub', 'https://github.com/reponseashimwe'),
              child: Column(
                children: [
                  Icon(Icons.code, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 4),
                  const Text('GitHub'),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 1,
              color: Colors.grey[300],
            ),
            GestureDetector(
              onTap: () => _copyToClipboard(context, 'LinkedIn', 'https://linkedin.com/in/reponseashimwe'),
              child: Column(
                children: [
                  Icon(Icons.business, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 4),
                  const Text('LinkedIn'),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 1,
              color: Colors.grey[300],
            ),
            GestureDetector(
              onTap: () => _copyToClipboard(context, 'Email', 'mailto:reponseashimwe@gmail.com'),
              child: Column(
                children: [
                  Icon(Icons.email, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 4),
                  const Text('Email'),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 1,
              color: Colors.grey[300]   ,
            ),
            GestureDetector(
              onTap: () => _copyToClipboard(context, 'Phone', 'tel:+250788300300'),
              child: Column(
                children: [
                  Icon(Icons.phone, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 4),
                  const Text('Phone'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 