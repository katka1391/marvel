// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<List<dynamic>> fetchMarvelHeroes() async {
//   final publicKey = '28c143eeb085bc7c4901c100f5d6d112';
//   final privateKey = '4ec9ecadf9bdbf63730cb1b31b65415ca5c9e691';
//   final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
//   final hash = generateHash(timestamp, publicKey, privateKey);

//   final apiUrl = 'http://gateway.marvel.com/v1/public/characters?ts=$timestamp&apikey=$publicKey&hash=$hash';

//   final response = await http.get(Uri.parse(apiUrl));

//   if (response.statusCode == 200) {
//     final data = json.decode(response.body);
//     final heroes = data['data']['results'];
//     return heroes;
//   } else {
//     throw Exception('Failed to fetch Marvel heroes');
//   }
// }

// String generateHash(String timestamp, String publicKey, String privateKey) {
//   final bytes = utf8.encode('$timestamp$privateKey$publicKey');
//   final digest = md5.convert(bytes);
//   return digest.toString();
// }

// void main() async {
//   final heroes = await fetchMarvelHeroes();
//   print(heroes);
// }
