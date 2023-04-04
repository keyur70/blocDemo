class MatchDetailModel {
  MatchDetailModel({
    required this.scoreStrip,
    required this.squad,
    required this.datetime,
    required this.innings,
    required this.nowBatting,
    required this.nowBowling,
    required this.hasCommentary,
    required this.title,
    required this.shortTitle,
    required this.series,
    required this.seriesKeedaSlug,
    required this.gameType,
    required this.gameFormat,
    required this.gameState,
    required this.lastWkt,
    required this.lastWktMin,
    required this.endtime,
    required this.matchStatus,
    required this.stumps,
    required this.inPlay,
    required this.secondaryInfo,
    required this.venue,
    required this.session,
    required this.info,
    required this.day,
    required this.mom,
    required this.description,
    required this.winTypeId,
    required this.homeTeam,
    required this.awayTeam,
    required this.winnerTeam,
    required this.umpires,
    required this.referee,
    required this.topicSlug,
    required this.commentary,
    required this.dirty,
    required this.recentOvers,
    required this.matchId,
    required this.publishTime,
    required this.previewData,
    required this.srId,
    required this.srScorePresent,
    required this.hasTable,
    required this.isFollowOn,
    required this.seoTitle,
    required this.playerImages,
    required this.predictionPoll,
    required this.predictorPoll,
    required this.currentPoll,
    required this.autoCommentary,
    required this.latestInningNumber,
    required this.competitionId,
    required this.isHighlightsAvailable,
    required this.pinnedVideos,
    required this.oversTimeline,
    required this.playerOfMatch,
    required this.playerOfSeries,
  });

  List<ScoreStrip> scoreStrip;
  List<TeamAPlaying11> squad;
  int datetime;
  List<Inning> innings;
  NowBatting nowBatting;
  NowBowling nowBowling;
  bool hasCommentary;
  String title;
  String shortTitle;
  String series;
  String seriesKeedaSlug;
  String gameType;
  int gameFormat;
  int gameState;
  String lastWkt;
  String lastWktMin;
  int endtime;
  String matchStatus;
  bool stumps;
  bool inPlay;
  String secondaryInfo;
  String venue;
  String session;
  String info;
  String day;
  String mom;
  String description;
  String winTypeId;
  String homeTeam;
  String awayTeam;
  String winnerTeam;
  String umpires;
  String referee;
  String topicSlug;
  List<Commentary> commentary;
  List<Commentary> dirty;
  List<dynamic> recentOvers;
  String matchId;
  int publishTime;
  PreviewData previewData;
  String srId;
  bool srScorePresent;
  bool hasTable;
  int isFollowOn;
  String seoTitle;
  PlayerImages playerImages;
  PredictionPoll predictionPoll;
  List<dynamic> predictorPoll;
  List<CurrentPoll> currentPoll;
  bool autoCommentary;
  int latestInningNumber;
  int competitionId;
  bool isHighlightsAvailable;
  PinnedVideos pinnedVideos;
  List<List<String>> oversTimeline;
  PlayerOf playerOfMatch;
  PlayerOf playerOfSeries;

  factory MatchDetailModel.fromJson(Map<String, dynamic> json) =>
      MatchDetailModel(
        scoreStrip: List<ScoreStrip>.from(
            json["score_strip"].map((x) => ScoreStrip.fromJson(x))),
        squad: List<TeamAPlaying11>.from(
            json["squad"].map((x) => TeamAPlaying11.fromJson(x))),
        datetime: json["datetime"],
        innings:
            List<Inning>.from(json["innings"].map((x) => Inning.fromJson(x))),
        nowBatting: NowBatting.fromJson(json["now_batting"]),
        nowBowling: NowBowling.fromJson(json["now_bowling"]),
        hasCommentary: json["has_commentary"],
        title: json["title"],
        shortTitle: json["short_title"],
        series: json["series"],
        seriesKeedaSlug: json["series_keeda_slug"],
        gameType: json["game_type"],
        gameFormat: json["game_format"],
        gameState: json["game_state"],
        lastWkt: json["last_wkt"],
        lastWktMin: json["last_wkt_min"],
        endtime: json["endtime"],
        matchStatus: json["match_status"],
        stumps: json["stumps"],
        inPlay: json["in_play"],
        secondaryInfo: json["secondary_info"],
        venue: json["venue"],
        session: json["session"],
        info: json["info"],
        day: json["day"],
        mom: json["mom"],
        description: json["description"],
        winTypeId: json["win_type_id"],
        homeTeam: json["home_team"],
        awayTeam: json["away_team"],
        winnerTeam: json["winner_team"],
        umpires: json["umpires"],
        referee: json["referee"],
        topicSlug: json["topic_slug"],
        commentary: List<Commentary>.from(
            json["commentary"].map((x) => Commentary.fromJson(x))),
        dirty: List<Commentary>.from(
            json["dirty"].map((x) => Commentary.fromJson(x))),
        recentOvers: List<dynamic>.from(json["recent_overs"].map((x) => x)),
        matchId: json["match_id"],
        publishTime: json["publish_time"],
        previewData: PreviewData.fromJson(json["preview_data"]),
        srId: json["sr_id"],
        srScorePresent: json["srScorePresent"],
        hasTable: json["has_table"],
        isFollowOn: json["is_follow_on"],
        seoTitle: json["seoTitle"],
        playerImages: PlayerImages.fromJson(json["player_images"]),
        predictionPoll: PredictionPoll.fromJson(json["prediction_poll"]),
        predictorPoll: List<dynamic>.from(json["predictor_poll"].map((x) => x)),
        currentPoll: List<CurrentPoll>.from(
            json["current_poll"].map((x) => CurrentPoll.fromJson(x))),
        autoCommentary: json["auto_commentary"],
        latestInningNumber: json["latest_inning_number"],
        competitionId: json["competition_id"],
        isHighlightsAvailable: json["is_highlights_available"],
        pinnedVideos: PinnedVideos.fromJson(json["pinned_videos"]),
        oversTimeline: List<List<String>>.from(json["overs_timeline"]
            .map((x) => List<String>.from(x.map((x) => x)))),
        playerOfMatch: PlayerOf.fromJson(json["player_of_match"]),
        playerOfSeries: PlayerOf.fromJson(json["player_of_series"]),
      );
}

class Commentary {
  Commentary({
    required this.timestamp,
    required this.commentText,
    required this.id,
    this.commentEdited,
    this.runs,
    this.bowler,
    this.bowlers,
    this.batsmen,
    this.over,
    this.overSummary,
    this.score,
    this.optaBallType,
  });

  int timestamp;
  String commentText;
  Id id;
  bool? commentEdited;
  int? runs;
  String? bowler;
  List<Bowler>? bowlers;
  List<CommentaryBatsman>? batsmen;
  String? over;
  String? overSummary;
  String? score;
  String? optaBallType;

  factory Commentary.fromJson(Map<String, dynamic> json) => Commentary(
        timestamp: json["timestamp"],
        commentText: json["comment_text"],
        id: Id.fromJson(json["_id"]),
        commentEdited: json["comment_edited"],
        runs: json["runs"],
        bowler: json["bowler"],
        bowlers: json["bowlers"] == null
            ? []
            : List<Bowler>.from(
                json["bowlers"]!.map((x) => Bowler.fromJson(x))),
        batsmen: json["batsmen"] == null
            ? []
            : List<CommentaryBatsman>.from(
                json["batsmen"]!.map((x) => CommentaryBatsman.fromJson(x))),
        over: json["over"],
        overSummary: json["over_summary"],
        score: json["score"],
        optaBallType: json["opta_ball_type"],
      );
}

class CommentaryBatsman {
  CommentaryBatsman({
    required this.playerId,
    required this.name,
    required this.runs,
    required this.balls,
    required this.isPlaying,
  });

  int playerId;
  String name;
  int runs;
  int balls;
  bool isPlaying;

  factory CommentaryBatsman.fromJson(Map<String, dynamic> json) =>
      CommentaryBatsman(
        playerId: json["player_id"],
        name: json["name"],
        runs: json["runs"],
        balls: json["balls"],
        isPlaying: json["is_playing"],
      );
}

class Bowler {
  Bowler({
    required this.playerId,
    required this.name,
    required this.wickets,
    required this.runsConceded,
  });

  int playerId;
  String name;
  int wickets;
  int runsConceded;

  factory Bowler.fromJson(Map<String, dynamic> json) => Bowler(
        playerId: json["player_id"],
        name: json["name"],
        wickets: json["wickets"],
        runsConceded: json["runs_conceded"],
      );
}

class Id {
  Id({
    required this.oid,
    required this.id,
  });

  String oid;
  String id;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        oid: json["\u0024oid"],
        id: json["\u0024id"],
      );
}

class CurrentPoll {
  CurrentPoll({
    required this.question,
    required this.createdAt,
    required this.options,
    required this.startTimestamp,
    required this.expiresOn,
    required this.pollTheme,
    required this.id,
  });

  String question;
  String createdAt;
  CurrentPollOptions options;
  int startTimestamp;
  int expiresOn;
  String pollTheme;
  String id;

  factory CurrentPoll.fromJson(Map<String, dynamic> json) => CurrentPoll(
        question: json["question"],
        createdAt: json["created_at"],
        options: CurrentPollOptions.fromJson(json["options"]),
        startTimestamp: json["start_timestamp"],
        expiresOn: json["expires_on"],
        pollTheme: json["poll_theme"],
        id: json["_id"],
      );
}

class CurrentPollOptions {
  CurrentPollOptions({
    required this.opt1,
    required this.opt2,
    required this.opt3,
  });

  Opt opt1;
  Opt opt2;
  Opt opt3;

  factory CurrentPollOptions.fromJson(Map<String, dynamic> json) =>
      CurrentPollOptions(
        opt1: Opt.fromJson(json["opt1"]),
        opt2: Opt.fromJson(json["opt2"]),
        opt3: Opt.fromJson(json["opt3"]),
      );
}

class Opt {
  Opt({
    required this.text,
    required this.voteCount,
    required this.isCorrectOption,
  });

  String text;
  int voteCount;
  bool isCorrectOption;

  factory Opt.fromJson(Map<String, dynamic> json) => Opt(
        text: json["text"],
        voteCount: json["vote_count"],
        isCorrectOption: json["is_correct_option"],
      );
}

class Inning {
  Inning({
    required this.name,
    required this.shortName,
    required this.batting,
    required this.bowling,
    required this.battingTeamId,
    required this.fallOfWickets,
    required this.extras,
    required this.bye,
    required this.legbye,
    required this.noball,
    required this.wide,
    required this.penaties,
    required this.wickets,
    required this.overs,
    required this.runs,
    required this.runRate,
    required this.inningsNo,
    required this.fours,
    required this.sixes,
    required this.fallOfWicketsArray,
    required this.currentPartnership,
  });

  String name;
  String shortName;
  List<Batting> batting;
  List<Bowling> bowling;
  int battingTeamId;
  String fallOfWickets;
  String extras;
  String bye;
  String legbye;
  String noball;
  String wide;
  String penaties;
  String wickets;
  String overs;
  String runs;
  double runRate;

  int inningsNo;
  String fours;
  String sixes;
  List<FallOfWicketsArray> fallOfWicketsArray;
  CurrentPartnership currentPartnership;

  factory Inning.fromJson(Map<String, dynamic> json) => Inning(
        name: json["name"],
        shortName: json["short_name"],
        batting:
            List<Batting>.from(json["batting"].map((x) => Batting.fromJson(x))),
        bowling:
            List<Bowling>.from(json["bowling"].map((x) => Bowling.fromJson(x))),
        battingTeamId: json["batting_team_id"],
        fallOfWickets: json["fall_of_wickets"],
        extras: json["extras"],
        bye: json["bye"],
        legbye: json["legbye"],
        noball: json["noball"],
        wide: json["wide"],
        penaties: json["penaties"],
        wickets: json["wickets"],
        overs: json["overs"],
        runs: json["runs"],
        runRate: json["run_rate"]?.toDouble(),
        inningsNo: json["innings_no"],
        fours: json["fours"],
        sixes: json["sixes"],
        fallOfWicketsArray: List<FallOfWicketsArray>.from(
            json["fall_of_wickets_array"]
                .map((x) => FallOfWicketsArray.fromJson(x))),
        currentPartnership:
            CurrentPartnership.fromJson(json["current_partnership"]),
      );
}

class Batting {
  Batting({
    required this.name,
    required this.slug,
    required this.balls,
    required this.runs,
    required this.outStr,
    required this.fours,
    required this.sixes,
    required this.strikeRate,
    this.isCaptain,
  });

  String name;
  String slug;
  String balls;
  String runs;
  String outStr;
  String fours;
  String sixes;
  double strikeRate;
  bool? isCaptain;

  factory Batting.fromJson(Map<String, dynamic> json) => Batting(
        name: json["name"],
        slug: json["slug"],
        balls: json["balls"],
        runs: json["runs"],
        outStr: json["out_str"],
        fours: json["fours"],
        sixes: json["sixes"],
        strikeRate: json["strike_rate"]?.toDouble(),
        isCaptain: json["is_captain"],
      );
}

class Bowling {
  Bowling({
    required this.name,
    required this.slug,
    required this.overs,
    required this.maidenOvers,
    required this.runs,
    required this.wickets,
    required this.economy,
    required this.extras,
  });

  String name;
  String slug;
  String overs;
  String maidenOvers;
  String runs;
  String wickets;
  double economy;
  int extras;

  factory Bowling.fromJson(Map<String, dynamic> json) => Bowling(
        name: json["name"],
        slug: json["slug"],
        overs: json["overs"],
        maidenOvers: json["maiden_overs"],
        runs: json["runs"],
        wickets: json["wickets"],
        economy: json["economy"]?.toDouble(),
        extras: json["extras"],
      );
}

class CurrentPartnership {
  CurrentPartnership({
    required this.runs,
    required this.balls,
    required this.overs,
    required this.batsmen,
  });

  int runs;
  int balls;
  double overs;
  List<CurrentPartnershipBatsman> batsmen;

  factory CurrentPartnership.fromJson(Map<String, dynamic> json) =>
      CurrentPartnership(
        runs: json["runs"],
        balls: json["balls"],
        overs: json["overs"]?.toDouble(),
        batsmen: List<CurrentPartnershipBatsman>.from(
            json["batsmen"].map((x) => CurrentPartnershipBatsman.fromJson(x))),
      );
}

class CurrentPartnershipBatsman {
  CurrentPartnershipBatsman({
    required this.runs,
    required this.balls,
    required this.name,
    required this.slug,
  });

  int runs;
  int balls;
  String name;
  String slug;

  factory CurrentPartnershipBatsman.fromJson(Map<String, dynamic> json) =>
      CurrentPartnershipBatsman(
        runs: json["runs"],
        balls: json["balls"],
        name: json["name"],
        slug: json["slug"],
      );
}

class FallOfWicketsArray {
  FallOfWicketsArray({
    required this.batsmanName,
    required this.batsmanSlug,
    required this.overs,
    required this.score,
    required this.runs,
    required this.howOut,
    required this.bowlerName,
    required this.bowlerSlug,
    required this.number,
  });

  String batsmanName;
  String batsmanSlug;
  String overs;
  String score;
  String runs;
  String howOut;
  String bowlerName;
  String bowlerSlug;
  int number;

  factory FallOfWicketsArray.fromJson(Map<String, dynamic> json) =>
      FallOfWicketsArray(
        batsmanName: json["batsman_name"],
        batsmanSlug: json["batsman_slug"],
        overs: json["overs"],
        score: json["score"],
        runs: json["runs"],
        howOut: json["how_out"],
        bowlerName: json["bowler_name"],
        bowlerSlug: json["bowler_slug"],
        number: json["number"],
      );
}

class NowBatting {
  NowBatting({
    required this.b1,
    required this.b2,
    required this.team,
  });

  NowBattingB1 b1;
  NowBattingB1 b2;
  Team team;

  factory NowBatting.fromJson(Map<String, dynamic> json) => NowBatting(
        b1: NowBattingB1.fromJson(json["b1"]),
        b2: NowBattingB1.fromJson(json["b2"]),
        team: Team.fromJson(json["team"]),
      );
}

class NowBattingB1 {
  NowBattingB1({
    required this.name,
    required this.slug,
    required this.stats,
  });

  String name;
  String slug;
  PurpleStats stats;

  factory NowBattingB1.fromJson(Map<String, dynamic> json) => NowBattingB1(
        name: json["name"],
        slug: json["slug"],
        stats: PurpleStats.fromJson(json["stats"]),
      );
}

class PurpleStats {
  PurpleStats({
    required this.sixes,
    required this.runs,
    required this.balls,
    required this.fours,
    required this.strikeRate,
  });

  String sixes;
  String runs;
  String balls;
  String fours;
  int strikeRate;

  factory PurpleStats.fromJson(Map<String, dynamic> json) => PurpleStats(
        sixes: json["sixes"],
        runs: json["runs"],
        balls: json["balls"],
        fours: json["fours"],
        strikeRate: json["strike_rate"],
      );
}

class Team {
  Team({
    required this.name,
    required this.shortName,
    required this.score,
  });

  String name;
  String shortName;
  String score;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        name: json["name"],
        shortName: json["short_name"],
        score: json["score"],
      );
}

class NowBowling {
  NowBowling({
    required this.b1,
    required this.b2,
  });

  NowBowlingB1 b1;
  NowBowlingB1 b2;

  factory NowBowling.fromJson(Map<String, dynamic> json) => NowBowling(
        b1: NowBowlingB1.fromJson(json["b1"]),
        b2: NowBowlingB1.fromJson(json["b2"]),
      );
}

class NowBowlingB1 {
  NowBowlingB1({
    required this.name,
    required this.slug,
    required this.stats,
  });

  String name;
  String slug;
  FluffyStats stats;

  factory NowBowlingB1.fromJson(Map<String, dynamic> json) => NowBowlingB1(
        name: json["name"],
        slug: json["slug"],
        stats: FluffyStats.fromJson(json["stats"]),
      );
}

class FluffyStats {
  FluffyStats({
    required this.runs,
    required this.balls,
    required this.maidenOvers,
    required this.wickets,
    required this.overs,
    required this.economy,
  });

  String runs;
  String balls;
  String maidenOvers;
  String wickets;
  String overs;
  double economy;

  factory FluffyStats.fromJson(Map<String, dynamic> json) => FluffyStats(
        runs: json["runs"],
        balls: json["balls"],
        maidenOvers: json["maiden_overs"],
        wickets: json["wickets"],
        overs: json["overs"],
        economy: json["economy"]?.toDouble(),
      );
}

class PinnedVideos {
  PinnedVideos({
    required this.preview,
    required this.fantasy,
    required this.live,
  });

  String preview;
  String fantasy;
  String live;

  factory PinnedVideos.fromJson(Map<String, dynamic> json) => PinnedVideos(
        preview: json["preview"],
        fantasy: json["fantasy"],
        live: json["live"],
      );
}

class PlayerImages {
  PlayerImages({
    required this.adamZampa,
    required this.alexHales,
    required this.alexRoss,
    required this.baxterJHolt,
    required this.beauWebster,
    required this.benCutting,
    required this.blakeNikitaras1,
    required this.brendanDoggett,
    required this.brodyCouch,
    required this.cameronMcclure,
    required this.campbellKellaway,
    required this.chrisGreen,
    required this.clintHinchliffe,
    required this.danielSams,
    required this.davidWarner,
    required this.fazalhaqFarooqi,
    required this.glennMaxwell,
    required this.gurinderSandhu,
    required this.hiltonCartwright,
    required this.jasonSangha,
    required this.joeBurns,
    required this.joeClarke,
    required this.liamHatcher,
    required this.lukeWood,
    required this.marcusStoinis,
    required this.matthewGilkes,
    required this.nathanCoulterNile,
    required this.nathanMcandrew,
    required this.nickLarkin,
    required this.oliverDavies,
    required this.pavelFlorin,
    required this.rileeRossouw,
    required this.samElliott,
    required this.samWhiteman,
    required this.taBoult,
    required this.tanveerSangha,
    required this.thomasFraserRogers,
    required this.tobyGray,
    required this.tomOconnell,
    required this.usmanQadir,
  });

  String adamZampa;
  String alexHales;
  String alexRoss;
  String baxterJHolt;
  String beauWebster;
  String benCutting;
  String blakeNikitaras1;
  String brendanDoggett;
  String brodyCouch;
  String cameronMcclure;
  String campbellKellaway;
  String chrisGreen;
  String clintHinchliffe;
  String danielSams;
  String davidWarner;
  String fazalhaqFarooqi;
  String glennMaxwell;
  String gurinderSandhu;
  String hiltonCartwright;
  String jasonSangha;
  String joeBurns;
  String joeClarke;
  String liamHatcher;
  String lukeWood;
  String marcusStoinis;
  String matthewGilkes;
  String nathanCoulterNile;
  String nathanMcandrew;
  String nickLarkin;
  String oliverDavies;
  String pavelFlorin;
  String rileeRossouw;
  String samElliott;
  String samWhiteman;
  String taBoult;
  String tanveerSangha;
  String thomasFraserRogers;
  String tobyGray;
  String tomOconnell;
  String usmanQadir;

  factory PlayerImages.fromJson(Map<String, dynamic> json) => PlayerImages(
        adamZampa: json["adam-zampa"],
        alexHales: json["alex-hales"],
        alexRoss: json["alex-ross"],
        baxterJHolt: json["baxter-j-holt"],
        beauWebster: json["beau-webster"],
        benCutting: json["ben-cutting"],
        blakeNikitaras1: json["blake-nikitaras-1"],
        brendanDoggett: json["brendan-doggett"],
        brodyCouch: json["brody-couch"],
        cameronMcclure: json["cameron-mcclure"],
        campbellKellaway: json["campbell-kellaway"],
        chrisGreen: json["chris-green"],
        clintHinchliffe: json["clint-hinchliffe"],
        danielSams: json["daniel-sams"],
        davidWarner: json["david-warner"],
        fazalhaqFarooqi: json["fazalhaq-farooqi"],
        glennMaxwell: json["glenn-maxwell"],
        gurinderSandhu: json["gurinder-sandhu"],
        hiltonCartwright: json["hilton-cartwright"],
        jasonSangha: json["jason-sangha"],
        joeBurns: json["joe-burns"],
        joeClarke: json["joe-clarke"],
        liamHatcher: json["liam-hatcher"],
        lukeWood: json["luke-wood"],
        marcusStoinis: json["marcus-stoinis"],
        matthewGilkes: json["matthew-gilkes"],
        nathanCoulterNile: json["nathan-coulter-nile"],
        nathanMcandrew: json["nathan-mcandrew"],
        nickLarkin: json["nick-larkin"],
        oliverDavies: json["oliver-davies"],
        pavelFlorin: json["pavel-florin"],
        rileeRossouw: json["rilee-rossouw"],
        samElliott: json["sam-elliott"],
        samWhiteman: json["sam-whiteman"],
        taBoult: json["ta-boult"],
        tanveerSangha: json["tanveer-sangha"],
        thomasFraserRogers: json["thomas-fraser-rogers"],
        tobyGray: json["toby-gray"],
        tomOconnell: json["tom-oconnell"],
        usmanQadir: json["usman-qadir"],
      );
}

class PlayerOf {
  PlayerOf({
    required this.playerName,
    required this.playerSlug,
    required this.battingStat,
    required this.bowlingStat,
  });

  String playerName;
  String playerSlug;
  String battingStat;
  String bowlingStat;

  factory PlayerOf.fromJson(Map<String, dynamic> json) => PlayerOf(
        playerName: json["player_name"],
        playerSlug: json["player_slug"],
        battingStat: json["batting_stat"],
        bowlingStat: json["bowling_stat"],
      );
}

class PredictionPoll {
  PredictionPoll({
    required this.question,
    required this.createdAt,
    required this.options,
  });

  String question;
  DateTime createdAt;
  PredictionPollOptions options;

  factory PredictionPoll.fromJson(Map<String, dynamic> json) => PredictionPoll(
        question: json["question"],
        createdAt: DateTime.parse(json["created_at"]),
        options: PredictionPollOptions.fromJson(json["options"]),
      );
}

class PredictionPollOptions {
  PredictionPollOptions({
    required this.opt1,
    required this.opt2,
  });

  Opt opt1;
  Opt opt2;

  factory PredictionPollOptions.fromJson(Map<String, dynamic> json) =>
      PredictionPollOptions(
        opt1: Opt.fromJson(json["opt1"]),
        opt2: Opt.fromJson(json["opt2"]),
      );
}

class PreviewData {
  PreviewData({
    required this.probableHomeTeam,
    required this.probableAwayTeam,
    required this.teamAPlaying11,
    required this.teamBPlaying11,
    required this.fantasyTips,
    this.keyPlayersHomeTeam,
    this.keyPlayersAwayTeam,
    this.injuryDataHomeTeam,
    this.injuryDataAwayTeam,
    required this.isPlaying11,
    required this.expertComment,
    this.previewPoints,
    required this.tossStatus,
    this.fantasyTipsPoints,
    required this.headToHead,
    required this.pitchReport,
    required this.pitchType,
    required this.tossAdvantage,
    required this.weatherTitle,
    required this.weatherRain,
    required this.weatherTemperature,
    required this.weatherTimestamp,
    required this.weatherPrediction,
    this.avgVenueScores,
    required this.tvStreaming,
    this.matchVenueStats,
  });

  ProbableTeam probableHomeTeam;
  ProbableTeam probableAwayTeam;
  TeamAPlaying11 teamAPlaying11;
  TeamAPlaying11 teamBPlaying11;
  FantasyTips fantasyTips;
  dynamic keyPlayersHomeTeam;
  dynamic keyPlayersAwayTeam;
  dynamic injuryDataHomeTeam;
  dynamic injuryDataAwayTeam;
  bool isPlaying11;
  ExpertComment expertComment;
  dynamic previewPoints;
  String tossStatus;
  dynamic fantasyTipsPoints;
  HeadToHead headToHead;

  String pitchReport;
  String pitchType;
  String tossAdvantage;
  String weatherTitle;
  String weatherRain;
  String weatherTemperature;
  String weatherTimestamp;
  String weatherPrediction;
  dynamic avgVenueScores;
  String tvStreaming;
  dynamic matchVenueStats;

  factory PreviewData.fromJson(Map<String, dynamic> json) => PreviewData(
        probableHomeTeam: ProbableTeam.fromJson(json["probable_home_team"]),
        probableAwayTeam: ProbableTeam.fromJson(json["probable_away_team"]),
        teamAPlaying11: TeamAPlaying11.fromJson(json["team_a_playing_11"]),
        teamBPlaying11: TeamAPlaying11.fromJson(json["team_b_playing_11"]),
        fantasyTips: FantasyTips.fromJson(json["fantasy_tips"]),
        keyPlayersHomeTeam: json["key_players_home_team"],
        keyPlayersAwayTeam: json["key_players_away_team"],
        injuryDataHomeTeam: json["injury_data_home_team"],
        injuryDataAwayTeam: json["injury_data_away_team"],
        isPlaying11: json["is_playing_11"],
        expertComment: ExpertComment.fromJson(json["expert_comment"]),
        previewPoints: json["preview_points"],
        tossStatus: json["toss_status"],
        fantasyTipsPoints: json["fantasy_tips_points"],
        headToHead: HeadToHead.fromJson(json["head_to_head"]),
        pitchReport: json["pitch_report"],
        pitchType: json["pitch_type"],
        tossAdvantage: json["toss_advantage"],
        weatherTitle: json["weather_title"],
        weatherRain: json["weather_rain"],
        weatherTemperature: json["weather_temperature"],
        weatherTimestamp: json["weather_timestamp"],
        weatherPrediction: json["weather_prediction"],
        avgVenueScores: json["avg_venue_scores"],
        tvStreaming: json["tv_streaming"],
        matchVenueStats: json["match_venue_stats"],
      );
}

class ExpertComment {
  ExpertComment({
    required this.expertName,
    required this.expertProfilePic,
    required this.expertProfileUrl,
    required this.commentText,
  });

  String expertName;
  String expertProfilePic;
  String expertProfileUrl;
  String commentText;

  factory ExpertComment.fromJson(Map<String, dynamic> json) => ExpertComment(
        expertName: json["expert_name"],
        expertProfilePic: json["expert_profile_pic"],
        expertProfileUrl: json["expert_profile_url"],
        commentText: json["comment_text"],
      );
}

class FantasyTips {
  FantasyTips({
    required this.tips,
    required this.topPlayers,
  });

  Tips tips;
  TopPlayers topPlayers;

  factory FantasyTips.fromJson(Map<String, dynamic> json) => FantasyTips(
        tips: Tips.fromJson(json["tips"]),
        topPlayers: TopPlayers.fromJson(json["top_players"]),
      );
}

class Tips {
  Tips({
    required this.oneLinerTip,
    this.beforeToss,
    this.afterToss,
    required this.updatedAt,
  });

  String oneLinerTip;
  dynamic beforeToss;
  dynamic afterToss;
  int updatedAt;

  factory Tips.fromJson(Map<String, dynamic> json) => Tips(
        oneLinerTip: json["one_liner_tip"],
        beforeToss: json["before_toss"],
        afterToss: json["after_toss"],
        updatedAt: json["updated_at"],
      );
}

class TopPlayers {
  TopPlayers({
    this.players,
  });

  dynamic players;

  factory TopPlayers.fromJson(Map<String, dynamic> json) => TopPlayers(
        players: json["players"],
      );
}

class HeadToHead {
  HeadToHead({
    required this.noResult,
    required this.homeTeamWins,
    required this.awayTeamWins,
    required this.homeTeamWinRatio,
  });

  int noResult;
  int homeTeamWins;
  int awayTeamWins;
  String homeTeamWinRatio;

  factory HeadToHead.fromJson(Map<String, dynamic> json) => HeadToHead(
        noResult: json["no_result"],
        homeTeamWins: json["home_team_wins"],
        awayTeamWins: json["away_team_wins"],
        homeTeamWinRatio: json["home_team_win_ratio"],
      );
}

class ProbableTeam {
  ProbableTeam({
    required this.teamName,
    required this.teamSlug,
    this.players,
    this.benchPlayers,
  });

  String teamName;
  String teamSlug;
  dynamic players;
  dynamic benchPlayers;

  factory ProbableTeam.fromJson(Map<String, dynamic> json) => ProbableTeam(
        teamName: json["team_name"],
        teamSlug: json["team_slug"],
        players: json["players"],
        benchPlayers: json["bench_players"],
      );
}

class TeamAPlaying11 {
  TeamAPlaying11({
    required this.team,
    required this.teamFlag,
    required this.teamShortname,
    this.squad,
    this.players,
    this.benchPlayers,
    this.teamId,
    this.teamSlug,
  });

  String team;
  String teamFlag;
  String teamShortname;
  List<String>? squad;
  List<Player>? players;
  List<Player>? benchPlayers;
  int? teamId;
  String? teamSlug;

  factory TeamAPlaying11.fromJson(Map<String, dynamic> json) => TeamAPlaying11(
        team: json["team"],
        teamFlag: json["team_flag"],
        teamShortname: json["team_shortname"],
        squad: json["squad"] == null
            ? []
            : List<String>.from(json["squad"]!.map((x) => x)),
        players: json["players"] == null
            ? []
            : List<Player>.from(
                json["players"]!.map((x) => Player.fromJson(x))),
        benchPlayers: json["bench_players"] == null
            ? []
            : List<Player>.from(
                json["bench_players"]!.map((x) => Player.fromJson(x))),
        teamId: json["team_id"],
        teamSlug: json["team_slug"],
      );
}

class Player {
  Player({
    required this.providerId,
    required this.skSlug,
    required this.slug,
    required this.name,
  });

  String providerId;
  String skSlug;
  String slug;
  String name;

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        providerId: json["provider_id"],
        skSlug: json["sk_slug"],
        slug: json["slug"],
        name: json["name"],
      );
}

class ScoreStrip {
  ScoreStrip({
    required this.name,
    required this.shortName,
    required this.teamFlag,
    required this.teamId,
    required this.slug,
    required this.score,
    required this.currentlyBatting,
    required this.runRate,
    required this.runRateNumeric,
  });

  String name;
  String shortName;
  String teamFlag;
  int teamId;
  String slug;
  String score;
  bool currentlyBatting;
  String runRate;
  double runRateNumeric;

  factory ScoreStrip.fromJson(Map<String, dynamic> json) => ScoreStrip(
        name: json["name"],
        shortName: json["short_name"],
        teamFlag: json["team_flag"],
        teamId: json["team_id"],
        slug: json["slug"],
        score: json["score"],
        currentlyBatting: json["currently_batting"],
        runRate: json["run_rate"],
        runRateNumeric: json["run_rate_numeric"]?.toDouble(),
      );
}
