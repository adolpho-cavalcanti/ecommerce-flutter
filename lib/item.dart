import 'package:flutter/material.dart';
import 'package:vgx_dev/productDetail.dart';

class Item extends StatelessWidget {
  final String tag;
  const Item({Key key, this.tag = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetail(
            tag: tag,
          ), 
        ));
      },
      title: Text("Samsung Galaxy A10"),
      subtitle: Text("R\$ 770.00"),
      leading: Hero(child: Image.network("https://a-static.mlcdn.com.br/618x463/smartphone-samsung-galaxy-s10-128gb-branco-4g-8gb-ram-tela-64-cam-tripla-cam-selfie-dupla/magazineluiza/222251800/dda961b08e496f2f116d86998551b0a3.jpg"), tag: tag,),
      trailing: IconButton(icon: Icon(Icons.shopping_basket), color: Theme.of(context).accentColor, onPressed: () {},),
    );
  }
}