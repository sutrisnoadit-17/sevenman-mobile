import 'package:http/http.dart' as http;
import 'dart:convert';


Future<dynamic> fetchData() async {
  var url = Uri.parse('https://api.bukan-web.xyz/api');
  var response = await http.get(url);
  
  if (response.statusCode == 200) {
    // Permintaan berhasil
    var jsonResponse = json.decode(response.body);
    
    // Olah data yang diterima
    // ...
  } else {
    // Permintaan gagal
    print('Error jaringan. Kode status: ${response.statusCode}');
  }
}
