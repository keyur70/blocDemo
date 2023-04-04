import 'package:bloc/bloc.dart';
import 'package:bloc_demo/api_provider/player_info_api.dart';
import 'package:bloc_demo/model/cutome_response_model.dart';
import 'package:bloc_demo/model/match_detail_model.dart';
import 'package:meta/meta.dart';

part 'match_bloc_state.dart';

class MatchBlocCubit extends Cubit<MatchBlocState> {
  //Api instance
  GetMatchDetailApi getMatchDetailApi = GetMatchDetailApi();
  MatchBlocCubit() : super(MatchBlocInitial());

  //Fetch Match Detail Data
  Future<void> fetchMatchDetails() async {
    emit(MatchBlocLoading());
    try {
      final result = await getMatchDetailApi.getMatchDetailApi();
      emit(MatchBlocSuccess(result));
    } catch (error) {
      emit(MatchBlocError(errorMessage: error.toString()));
    }
  }
}
