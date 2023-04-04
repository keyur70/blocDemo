import 'package:bloc_demo/model/match_detail_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MatchCardView extends StatelessWidget {
  final MatchDetailModel? matchDetailModel;
  const MatchCardView({super.key, required this.matchDetailModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.03,
        vertical: size.height * 0.02,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderCard(size),
            SizedBox(height: size.height * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoData(
                    size: size,
                    title: 'Player Of Match : ',
                    value: matchDetailModel?.playerOfMatch.playerName ?? '',
                  ),
                  _buildInfoData(
                    size: size,
                    title: 'Winner : ',
                    value: matchDetailModel?.winnerTeam ?? '',
                  ),
                  _buildInfoData(
                    size: size,
                    title: 'Info : ',
                    value: matchDetailModel?.info ?? '',
                  ),
                  _buildInfoData(
                    size: size,
                    title: 'description : ',
                    value: matchDetailModel?.description ?? '',
                  ),
                  _buildInfoData(
                    size: size,
                    title: 'Secondary Info : ',
                    value: matchDetailModel?.secondaryInfo ?? '',
                  ),
                  _buildInfoData(
                    size: size,
                    title: 'Umpires : ',
                    value: matchDetailModel?.umpires ?? '',
                  ),
                  _buildInfoData(
                    size: size,
                    title: 'Referee : ',
                    value: matchDetailModel?.referee ?? '',
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    'Batting',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.022,
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  _buildBatttingHeader(size),
                  SizedBox(height: size.height * 0.015),
                  _buildBattingPlayerView(
                      size, matchDetailModel?.nowBatting.b1),
                  _buildBattingPlayerView(size, matchDetailModel?.nowBatting.b2)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBattingPlayerView(Size size, NowBattingB1? battingPlayer) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          battingPlayer?.name ?? '',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: size.height * 0.02,
          ),
        ),
        SizedBox(
          width: size.width / 2.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                battingPlayer?.stats.runs ?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.02,
                ),
              ),
              Text(
                battingPlayer?.stats.balls ?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.02,
                ),
              ),
              Text(
                battingPlayer?.stats.fours ?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.02,
                ),
              ),
              Text(
                battingPlayer?.stats.sixes ?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.02,
                ),
              ),
              Text(
                battingPlayer?.stats.strikeRate.toString() ?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.02,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildBatttingHeader(Size size) {
    return Container(
      color: Colors.black.withOpacity(0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.02,
              ),
            ),
          ),
          SizedBox(
            width: size.width / 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'R',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: size.height * 0.02,
                  ),
                ),
                Text(
                  'B',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: size.height * 0.02,
                  ),
                ),
                Text(
                  '4s',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: size.height * 0.02,
                  ),
                ),
                Text(
                  '6s',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: size.height * 0.02,
                  ),
                ),
                Text(
                  'SR',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: size.height * 0.02,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInfoData({
    required Size size,
    required String title,
    required String value,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.022,
              ),
            ),
            TextSpan(
              text: value,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderCard(Size size) {
    return SizedBox(
      width: size.width,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.02,
            vertical: size.height * 0.03,
          ),
          child: Column(
            children: [
              Text(
                matchDetailModel?.series ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.02,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                matchDetailModel?.title ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.02,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTeamView(size, matchDetailModel?.scoreStrip[0]),
                  Text(
                    'Vs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.03,
                    ),
                  ),
                  _buildTeamView(size, matchDetailModel?.scoreStrip[1]),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                matchDetailModel?.info ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.018,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTeamView(Size size, ScoreStrip? teamInfo) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
          width: size.width * 0.15,
          child: CachedNetworkImage(
            imageUrl: teamInfo?.teamFlag ?? '',
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(
          teamInfo?.shortName ?? '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: size.height * 0.025,
          ),
        ),
        Text(
          teamInfo?.score ?? '',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: size.height * 0.02,
          ),
        )
      ],
    );
  }
}
