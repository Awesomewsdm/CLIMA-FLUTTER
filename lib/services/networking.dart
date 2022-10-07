import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.newUrl});
  final String? newUrl;

  void getData() async {
   

    http.Response response = await http.get(Uri.parse(newUrl!),);
    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      var temperature = decodedData.list[0].main.temp;

      var condition = decodedData.list[0].weather[0].id;

      var cityName = decodedData.city.name;
      print(temperature);
    } else {
      print(response.statusCode);
    }
  }
}
 


      // var url = Uri.https('samples.openweathermap.org', '/data/2.5/forecast',
    //     {'id': '524901', 'appid': 'b1b15e88fa797225412429c1c50c122a1'});


