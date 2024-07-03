// bottom_section.dart
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Recent Transactions'), // Title
        ListView.builder(
          shrinkWrap: true,
          itemCount: transactions.length, // Replace with actual data
          itemBuilder: (context, index) {
            final transaction = transactions[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(transaction.userImage),
              ),
              title: Text(transaction.userName),
              subtitle: Text(transaction.date),
              trailing: Text(
                transaction.amount,
                style: TextStyle(
                  color: transaction.isSent ? Colors.red : Colors.green,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

// Replace with actual transaction data model
class Transaction {
  final String userImage;
  final String userName;
  final String date;
  final String amount;
  final bool isSent;

  Transaction({
    required this.userImage,
    required this.userName,
    required this.date,
    required this.amount,
    required this.isSent,
  });
}

// Example data (replace with your actual data)
final List<Transaction> transactions = [
  Transaction(
    userImage: 'assets/user1.png',
    userName: 'Alexander Young',
    date: '02 Feb, 19',
    amount: '\$500.00',
    isSent: true,
  ),
  // Add more transactions here...
];
