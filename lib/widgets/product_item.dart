import 'package:flutter/material.dart';
import '/providers/product.dart';
import 'package:provider/provider.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: product.id);
        },
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            leading: IconButton(
              onPressed: () {
                product.toggleFavouriteStatus();
              },
              icon: Icon(
                  product.isFavourite ? Icons.favorite : Icons.favorite_border),
              color: Theme.of(context).colorScheme.secondary,
            ),
            backgroundColor: Colors.black87,
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
