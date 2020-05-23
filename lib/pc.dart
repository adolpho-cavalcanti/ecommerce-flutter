import 'package:flutter/material.dart';
import 'package:vgx_dev/pcProd.dart';

class Pc extends StatelessWidget {
  final String tag;

  const Pc({Key key, this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PcProd(
            tag: tag,
          ), 
        ));
      },
      title: Text("Ultrabook Dell"),
      subtitle: Text("R\$ 2770.00"),
      leading: Hero(child: Image.network("https://images-americanas.b2w.io/produtos/01/00/item/112901/0/112901090_1GG.jpg"), tag: tag,),
      trailing: IconButton(icon: Icon(Icons.shopping_basket), color: Theme.of(context).accentColor, onPressed: () {},),
    );
  }
}