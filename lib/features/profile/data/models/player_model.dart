import 'package:clash_guide/features/profile/data/models/season/league_statistics_model.dart';
import 'package:clash_guide/features/profile/domain/entities/Cards/cards_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/Cards/current_deck_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/Cards/current_favourite_card_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/achievements_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/arena_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/badges_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/clan_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/player_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/season/league_statistics_entity.dart';

import 'achievements_model.dart';
import 'arena_model.dart';
import 'badges_model.dart';
import 'cards/cards_model.dart';
import 'cards/current_deck_model.dart';
import 'cards/current_favourite_card_model.dart';
import 'clan_model.dart';

class PlayerModel implements PlayerEntity {

  @override
  late String tag;
  @override
  late String name;
  @override
  late int expLevel;
  @override
  late int trophies;
  @override
  late int bestTrophies;
  @override
  late int wins;
  @override
  late int losses;
  @override
  late int battleCount;
  @override
  late int threeCrownWins;
  @override
  late int challengeCardsWon;
  @override
  late int challengeMaxWins;
  @override
  late int tournamentCardsWon;
  @override
  late int tournamentBattleCount;
  @override
  late String role;
  @override
  late int donations;
  @override
  late int donationsReceived;
  @override
  late int totalDonations;
  @override
  late int warDayWins;
  @override
  late int clanCardsCollected;
  @override
  late ClanEntity clan;
  @override
  late ArenaEntity arena;
  @override
  late LeagueStatisticsEntity leagueStatistics;
  @override
  late List<BadgesEntity> badges;
  @override
  late List<AchievementsEntity> achievements;
  @override
  late List<CardsEntity> cards;
  @override
  late List<CurrentDeckEntity> currentDeck;
  @override
  late CurrentFavouriteCardEntity currentFavouriteCard;
  @override
  late int starPoints;
  @override
  late int expPoints;

  PlayerModel.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
    name = json['name'];
    expLevel = json['expLevel'];
    trophies = json['trophies'];
    bestTrophies = json['bestTrophies'];
    wins = json['wins'];
    losses = json['losses'];
    battleCount = json['battleCount'];
    threeCrownWins = json['threeCrownWins'];
    challengeCardsWon = json['challengeCardsWon'];
    challengeMaxWins = json['challengeMaxWins'];
    tournamentCardsWon = json['tournamentCardsWon'];
    tournamentBattleCount = json['tournamentBattleCount'];
    role = json['role'];
    donations = json['donations'];
    donationsReceived = json['donationsReceived'];
    totalDonations = json['totalDonations'];
    warDayWins = json['warDayWins'];
    clanCardsCollected = json['clanCardsCollected'];
    clan = (json['clan'] != null ? ClanModel.fromJson(json['clan']) : null)!;
    arena = (json['arena'] != null ? ArenaModel.fromJson(json['arena']) : null) as ArenaEntity;
    leagueStatistics = (json['leagueStatistics'] != null
        ? LeagueStatisticsModel.fromJson(json['leagueStatistics'])
        : null) as LeagueStatisticsEntity;
    if (json['badges'] != null) {
      badges = [];
      json['badges'].forEach((v) {
        badges.add(BadgesModel.fromJson(v));
      });
    }
    if (json['achievements'] != null) {
      achievements = [];
      json['achievements'].forEach((v) {
        achievements.add(AchievementsModel.fromJson(v));
      });
    }
    if (json['cards'] != null) {
      cards = [];
      json['cards'].forEach((v) {
        cards.add(CardsModel.fromJson(v));
      });
    }
    if (json['currentDeck'] != null) {
      currentDeck = [];
      json['currentDeck'].forEach((v) {
        currentDeck.add(CurrentDeckModel.fromJson(v));
      });
    }
    currentFavouriteCard = (json['currentFavouriteCard'] != null
        ? CurrentFavouriteCardModel.fromJson(json['currentFavouriteCard'])
        : null) as CurrentFavouriteCardEntity;
    starPoints = json['starPoints'];
    expPoints = json['expPoints'];
  }
}