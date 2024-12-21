import 'package:deep_links/core/navigation/routes.dart';
import 'package:deep_links/main.dart';
import 'package:flutter/material.dart';

final String imageUrl =
    "https://gratisography.com/wp-content/uploads/2024/10/gratisography-cool-cat-800x525.jpg";
final title = 'title';
final description = 'description';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deep Links'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 150,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Image.network(imageUrl),
                  Text(title),
                  Text(description),
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    padding: EdgeInsets.all(5),
                    child: Text('Go Details'),
                    onPressed: () {
                      router.goNamed(
                        Routes.productDetailsRoute,
                        pathParameters: {
                          "id": "dwirandyh",
                        },
                      );
                      // Navigator.pushNamed(context,Routes.productDetailsRoute);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
