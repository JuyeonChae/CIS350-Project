import 'dart:convert';
import 'package:http/http.dart' as http;

String token = "<Generated-from-dashboard>";

Future<String> createMeeting() async {
  final http.Response httpResponse = await http.post(
    Uri.parse("https://api.videosdk.live/v2/rooms"),
    headers: {'Authorization': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGlrZXkiOiJlMmQ2NTBmMy01OGYzLTQxOWEtYWM0OS0xMmY3NmQ5ZWM0MWMiLCJwZXJtaXNzaW9ucyI6WyJhbGxvd19qb2luIl0sImlhdCI6MTY2OTc2OTY0NSwiZXhwIjoxNjcwMzc0NDQ1fQ.03evZK4ElKs_o3LMRa21RwjrFlVgUd4CXRAtC_t919w'},
  );

  return json.decode(httpResponse.body)['roomId'];
}