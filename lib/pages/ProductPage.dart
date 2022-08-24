import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/widgets/footer.dart';
import 'package:flutter_application_1/widgets/logo.dart';
import 'package:flutter_application_1/widgets/menu.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Course>? course = [];
  Future<void> _getData() async {
    var url = Uri.parse("https://noraphat.dev/web_api/get_product/");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      //print(response.body);
      final Product product =
          Product.fromJson(convert.jsonDecode(response.body));
      setState(() {
        course = product.course;
      });
    } else {
      print("Connection Error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text('This is product page'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context,int index){
            return ListTile(
              leading: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: NetworkImage(course![index].images!),
                    fit: BoxFit.cover
                  )
                ),
              ),
              title: Text('${course![index].pdName}'),
              subtitle: Text('Price is : ${course![index].price}'),
              trailing: Icon(Icons.arrow_right),
            );
          },
          separatorBuilder: (BuildContext context,int index)=> Divider(),
          itemCount: course!.length),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
