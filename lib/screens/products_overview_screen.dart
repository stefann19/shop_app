import 'package:flutter/material.dart';
import 'package:shop_app/widgets/products_grid.dart';

enum FilterOptions{
  Favorites,
  All
}

class ProductsOverviewScreen extends StatefulWidget {
  ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stefan\'s Shop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) => {
              setState((){
                _showOnlyFavorites = (selectedValue == FilterOptions.Favorites);
              })
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
      body: ProductsGrid(showOnlyFavorites: _showOnlyFavorites),
    );
  }
}


