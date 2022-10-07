import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});
  final String? url;

  Future<void> getData() async {
    http.Response response = await http.get(
      Uri.parse(url!),
    );
    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);

      return decodedData;
    } else {
      // ignore: avoid_print
      print(response.statusCode);
    }
  }
}
 


      // var url = Uri.https('samples.openweathermap.org', '/data/2.5/forecast',
    //     {'id': '524901', 'appid': 'b1b15e88fa797225412429c1c50c122a1'});


