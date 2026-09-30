import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/custom_button.dart';
import '../widgets/product_card.dart';

class CartScreen extends StatefulWidget {
  final VoidCallback? onBack;

  CartScreen({
    super.key,
    this.onBack,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Product> cartItems = [
    Product(
      title: 'Regular Fit Slogan',
      size: 'Size L',
      price: 1190,
      quantity: 2,
    ),
    Product(
      title: 'Regular Fit Polo',
      size: 'Size M',
      price: 1100,
      quantity: 1,
    ),
  ];

  double get subtotal {
    double total = 0;
    for (var item in cartItems) {
      total += item.price * item.quantity;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            if (widget.onBack != null) {
              widget.onBack!();
            } else if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return ProductCard(
                    product: item,
                    onTap: () {
                      Navigator.pushNamed(context, '/details', arguments: item);
                    },
                    onDelete: () {
                      setState(() {
                        cartItems.removeAt(index);
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        item.quantity++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        if (item.quantity > 1) {
                          item.quantity--;
                        }
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  _buildRow('Sub-total', '\$ ${subtotal.toStringAsFixed(0)}'),
                  SizedBox(height: 8),
                  _buildRow('VAT (%)', '\$ 0.00'),
                  SizedBox(height: 8),
                  _buildRow('Shipping fee', '\$ 80'),
                  Divider(height: 24),
                  _buildRow('Total', '\$ ${(subtotal + 80).toStringAsFixed(0)}', isBold: true),
                  SizedBox(height: 20),
                  CustomButton(
                    text: 'Go To Checkout',
                    icon: Icons.arrow_forward,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Proceeding to checkout...')),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: isBold ? 16 : 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: isBold ? Colors.black : Colors.grey.shade600,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isBold ? 16 : 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
