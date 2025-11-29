import 'package:flutter/material.dart';

class AddMoneyScreen extends StatelessWidget {
  const AddMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add money'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Bank transfer'),
            subtitle: Text('Top-up your MTCPAY balance from your bank account.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Card top-up'),
            subtitle: Text('Use a debit card to add funds.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.store),
            title: Text('Agent / partner'),
            subtitle: Text('Deposit cash via MTCPAY authorised partner locations.'),
          ),
        ],
      ),
    );
  }
}
