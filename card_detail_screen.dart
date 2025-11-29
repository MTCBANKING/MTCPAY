import 'package:flutter/material.dart';

class CardDetailScreen extends StatelessWidget {
  const CardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card details'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const ListTile(
            title: Text('MTCPAY Virtual'),
            subtitle: Text('**** **** **** 1234'),
          ),
          const SizedBox(height: 8),
          const ListTile(
            title: Text('Status'),
            subtitle: Text('Active'),
          ),
          SwitchListTile(
            title: const Text('Freeze card'),
            value: false,
            onChanged: (v) {},
          ),
          const Divider(),
          const ListTile(
            title: Text('Show PIN'),
            trailing: Icon(Icons.visibility),
          ),
          const ListTile(
            title: Text('Card limits'),
            subtitle: Text('Daily and monthly limits.'),
          ),
          const Divider(),
          const ListTile(
            title: Text('Download statement'),
            trailing: Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
    );
  }
}
