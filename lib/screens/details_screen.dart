import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/custom_button.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;

  DetailsScreen({
    super.key,
    this.product,
  });

  @override
  Widget build(BuildContext context) {
    final item = product ??
        ModalRoute.of(context)?.settings.arguments as Product? ??
        Product(title: 'Fit Polo T Shirt', size: 'Size L', price: 1190);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          'Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F8FA),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(item.imageUrl, fit: BoxFit.contain),
              ),
            ),
            SizedBox(height: 24),
            Text(
              item.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 20),
                SizedBox(width: 4),
                Text(
                  '${item.rating}/5',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 6),
                Text(
                  '(${item.reviewsCount} reviews)',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              item.description,
              style: TextStyle(color: Colors.grey.shade600, height: 1.5),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey.shade200)),
        ),
        child: SafeArea(
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price', style: TextStyle(color: Colors.grey.shade500)),
                  Text(
                    '\$ ${item.price.toStringAsFixed(0)}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(width: 24),
              Expanded(
                child: CustomButton(
                  text: 'Add to Cart',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${item.title} added to cart!')),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
