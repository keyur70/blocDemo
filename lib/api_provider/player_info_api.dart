import 'dart:convert';

import 'package:bloc_demo/model/cutome_response_model.dart';
import 'package:bloc_demo/model/match_detail_model.dart';
import 'package:http/http.dart' as http;

class GetMatchDetailApi {
  //Get Match Detail Api
  Future<CustomResponseModel<MatchDetailModel>> getMatchDetailApi() async {
    final response = await http.get(Uri.parse(
        'https://cmc2.sportskeeda.com/live-cricket-score/sydney-thunder-vs-melbourne-stars-1st-match-13-december-2022/ajax?lang=en'));
    if (response.statusCode == 200) {
      return CustomResponseModel<MatchDetailModel>(
        status: 200,
        data: MatchDetailModel.fromJson(json.decode(response.body)),
      );
    } else {
      return CustomResponseModel(status: 400);
    }
  }
}
