import 'package:flutter/material.dart';

class PcProd extends StatefulWidget {
  final String tag;

  const PcProd({Key key, this.tag}) : super(key: key);
  @override
  _PcProdState createState() => _PcProdState();
}

class _PcProdState extends State<PcProd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tag),
      ),
      body: Center(child: Hero(child: Image.network("https://images-americanas.b2w.io/produtos/01/00/item/112901/0/112901090_1GG.jpg"), tag: widget.tag,),),
      
    );
  }
}