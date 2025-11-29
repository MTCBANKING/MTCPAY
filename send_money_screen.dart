import 'package:flutter/material.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  String _method = 'phone';
  final _controller = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send money'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'phone',
                  label: Text('Phone'),
                  icon: Icon(Icons.phone_android),
                ),
                ButtonSegment(
                  value: 'card',
                  label: Text('Card'),
                  icon: Icon(Icons.credit_card),
                ),
                ButtonSegment(
                  value: 'iban',
                  label: Text('IBAN'),
                  icon: Icon(Icons.account_balance),
                ),
              ],
              selected: {_method},
              onSelectionChanged: (value) {
                setState(() => _method = value.first);
              },
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: _method == 'phone'
                    ? 'Phone number'
                    : _method == 'card'
                        ? 'Card number'
                        : 'IBAN',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Review transfer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
