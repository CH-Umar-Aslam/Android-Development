import 'package:flutter/material.dart';

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  double _currentBid = 100.0; // Example starting bid

  void _increaseBid() {
    setState(() {
      _currentBid += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bidding Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current Maximum Bid:',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, // Updated to titleLarge
            ),
            SizedBox(height: 16.0),
            Text(
              '\$${_currentBid.toStringAsFixed(2)}',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium, // Updated to headlineMedium
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _increaseBid,
              child: Text('Increase Bid'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
