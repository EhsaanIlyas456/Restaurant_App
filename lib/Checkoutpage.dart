import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  // Dummy data for items in the cart
  List<CartItem> cartItems = [
    CartItem(name: 'Pizza', price: 12.99, quantity: 2),
    CartItem(name: 'Burger', price: 8.99, quantity: 1),
    // Add more items as needed
  ];

  // Dummy data for delivery address
  String deliveryAddress = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Items in Cart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Display items in the cart
            ListView.builder(
              shrinkWrap: true,
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index].name),
                  subtitle: Text('Quantity: ${cartItems[index].quantity}'),
                  trailing: Text('\$${cartItems[index].price.toStringAsFixed(2)}'),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              'Delivery Address',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Display delivery address
            Text(deliveryAddress),
            SizedBox(height: 20),
            // Total amount
            Text(
              'Total: \$${calculateTotalAmount().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Button to proceed to payment
            ElevatedButton(
              onPressed: () {
                // Add logic to proceed to payment
                // You may navigate to a payment screen or show a payment dialog
              },
              child: Text('Proceed to Payment'),
            ),
          ],
        ),
      ),
    );
  }

  // Function to calculate the total amount in the cart
  double calculateTotalAmount() {
    double total = 0;
    for (var item in cartItems) {
      total += item.price * item.quantity;
    }
    return total;
  }
}

// Model class for cart items
class CartItem {
  final String name;
  final double price;
  final int quantity;

  CartItem({required this.name, required this.price, required this.quantity});
}