import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/products_grid.dart';

enum FilterOptions{
  Favorites,
  All
}

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Stefan\'s Shop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) => {
              productsProvider.showFavorites(selectedValue == FilterOptions.All)
            },
            itemBuilder: (_) =>
            [
              PopupMenuItem(child: Text('Only Favorites'), value: FilterOptions.Favorites),
              PopupMenuItem(child: Text('Show all'), value: FilterOptions.All)
            ],
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ProductsGrid(),
    );
  }
}


