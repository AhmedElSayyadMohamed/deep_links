abstract class BaseDynamicLinksServices {



 Future<String>  createProductLink({
  required int id,
  required String imageUrl,
  required String title,
  required String description,
 });

 getInitialLink();
}