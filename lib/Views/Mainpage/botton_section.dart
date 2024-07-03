// bottom_section.dart
import 'package:flutter/material.dart';
import 'package:payapp/Utils/constants.dart';

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.Screen_background
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text('Recent Transactions', style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),), // Title
            ListView.builder(
              shrinkWrap: true,
              itemCount: transactions.length, // Replace with actual data
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 20,
                        height: 20,
                        child: Image.asset('Assests/Priyanshu.jpeg', fit: BoxFit.fill,),
                      ),
                      title: Text(transaction.userName),
                      subtitle: Text(transaction.date),
                      trailing: Text(
                        transaction.amount,
                        style: TextStyle(
                          color: transaction.isSent ? Colors.red : Colors.green,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
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
    userName: 'Priyanshu',
    date: '02 Feb, 19',
    amount: '\$500.00',
    isSent: true,
  ),
  Transaction(
    userImage: 'assets/user1.png',
    userName: 'Alexander Young',
    date: '02 Feb, 19',
    amount: '\$500.00',
    isSent: true,
  ),
  Transaction(
    userImage: 'assets/user1.png',
    userName: 'Alexander Young',
    date: '02 Feb, 19',
    amount: '\$500.00',
    isSent: true,
  ),
  // Add more transactions here...
];
