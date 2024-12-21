import 'package:deep_links/core/constants.dart';
import 'package:deep_links/core/navigation/routes.dart';
import 'package:deep_links/main.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Object? param;
  const ProductDetailsScreen({
    super.key,
    this.param,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              share(
                id: '12',
                routeName: Routes.productDetailsRoute,
              );
            },
            child: Text("details screen"),
          ),
        ],
      ),
    );
  }
}

void share({
  required String id,
  required String routeName,
}) {
  // https://example.com/page/123
  Share.share("$deepLinksDomain$routeName/$id");
}
