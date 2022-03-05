import 'package:http/http.dart' as http;

Future<String> fetchFromInternet() async {
  const String imageUrl = "https://fakestoreapi.com/products";
  try {
    final response = await http.get(Uri.parse(imageUrl)).catchError((error) {
      print("error");
      throw error;
    });

    if(response.statusCode==200){
    //  print(response.body);
      return response.body;
    }
  } catch (error) {
    print(error);
   // rethrow;
    throw error;
  }
  return "";
}
