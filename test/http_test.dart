import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

main() {
  test(
    'getData status 200 - OK',
    () async {
      final url = Uri.parse(
          'https://api.unsplash.com/search/photos/?client_id=BAubKyGOpgpga-0CfKYJRVi2bhQbuzK1uiityVI7qRw&page=1&query=agro');

      http.Response response = await http.get(url);

      expect(response.statusCode, 200);
    },
  );

  test(
    'getData status 401 - Unauthorized',
    () async {
      final url =
          Uri.parse('https://api.unsplash.com/search/photos/?query=agro');

      http.Response response = await http.get(url);

      expect(response.statusCode, 401);
    },
  );

  test(
    'getData status 404 - Not Found',
    () async {
      final url = Uri.parse('https://api.unsplash.com/search/fotos/');

      http.Response response = await http.get(url);

      expect(response.statusCode, 404);
    },
  );
}
