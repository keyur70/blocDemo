import 'package:bloc_demo/bloc/match_bloc/match_bloc_cubit.dart';
import 'package:bloc_demo/view/widget/match_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MatchBlocCubit()..fetchMatchDetails(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('Match Detail'),
        ),
        body: BlocBuilder<MatchBlocCubit, MatchBlocState>(
          builder: (context, state) {
            if (state is MatchBlocLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is MatchBlocSuccess) {
              return MatchCardView(
                  matchDetailModel: state.matchDetailModel.data);
            } else if (state is MatchBlocError) {
              return Text(state.errorMessage);
            }
            return const Text('No Data Found');
          },
        ),
      ),
    );
  }
}
