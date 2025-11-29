import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('In-app chat'),
            subtitle: Text('Chat with MTCPAY support (planned).'),
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text('Email'),
            subtitle: Text('support@mtcpay.example'),
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('FAQ'),
            subtitle: Text('Common questions about wallet and cards.'),
          ),
        ],
      ),
    );
  }
}
