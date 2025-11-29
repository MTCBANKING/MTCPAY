import 'package:flutter/material.dart';

import '../../widgets/transaction_tile.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          TransactionTile(
            title: 'Online purchase',
            subtitle: 'E-commerce',
            amount: '-€ 45.90',
          ),
          TransactionTile(
            title: 'Wallet top-up',
            subtitle: 'Bank transfer',
            amount: '+€ 500.00',
          ),
        ],
      ),
    );
  }
}
