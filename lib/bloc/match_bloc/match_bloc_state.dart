part of 'match_bloc_cubit.dart';

@immutable
abstract class MatchBlocState {}

class MatchBlocInitial extends MatchBlocState {}

class MatchBlocLoading extends MatchBlocState {}

class MatchBlocSuccess extends MatchBlocState {
  final CustomResponseModel<MatchDetailModel> matchDetailModel;

  MatchBlocSuccess(this.matchDetailModel);
}

class MatchBlocError extends MatchBlocState {
  final String errorMessage;

  MatchBlocError({required this.errorMessage});
}
