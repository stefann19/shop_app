import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key? key, required this.showOnlyFavorites
  }) : super(key: key);
  final bool showOnlyFavorites;

  @override
  Widget build(BuildContext context) {
    final Products productsProvider = Provider.of<Products>(context);
    final productList = showOnlyFavorites ? productsProvider.favoriteItems : productsProvider.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: productList.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: productList[i],
          child: ProductItem()
      ),
    );
  }
}
