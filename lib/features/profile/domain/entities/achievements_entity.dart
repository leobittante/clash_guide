class AchievementsEntity {
  String name;
  int stars;
  int value;
  int target;
  String info;
  String completionInfo;

  AchievementsEntity(
      {required this.name,
        required this.stars,
        required this.value,
        required this.target,
        required this.info,
        required this.completionInfo
      });
}