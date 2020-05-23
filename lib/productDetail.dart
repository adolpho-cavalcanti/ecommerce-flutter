import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String tag;

  const ProductDetail({Key key, this.tag}) : super(key: key);
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tag),
      ),
      body: Center(child: Hero(child: Image.network("https://a-static.mlcdn.com.br/618x463/smartphone-samsung-galaxy-s10-128gb-branco-4g-8gb-ram-tela-64-cam-tripla-cam-selfie-dupla/magazineluiza/222251800/dda961b08e496f2f116d86998551b0a3.jpg"), tag: widget.tag,),),
      
    );
  }
}