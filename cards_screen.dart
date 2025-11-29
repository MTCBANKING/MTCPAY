import 'package:flutter/material.dart';

import '../../widgets/card_tile.dart';
import '../../routes/app_routes.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  void _openCardDetail(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.cardDetail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GestureDetector(
            onTap: () => _openCardDetail(context),
            child: const CardTile(
              last4: '1234',
              label: 'MTCPAY Virtual',
            ),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () => _openCardDetail(context),
            child: const CardTile(
              last4: '5678',
              label: 'MTCPAY Physical',
            ),
          ),
        ],
      ),
    );
  }
}
