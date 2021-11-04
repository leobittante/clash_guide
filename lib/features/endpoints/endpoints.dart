class Endpoints {

  //API BASE URL
  static const String apiUrl = "https://api.clashroyale.com/v1/";

  //PLAYER PROFILE
  static String playerProfile = apiUrl + "players/";

  static final Map<String, String> queryParameters =  {
    "typ": "JWT",
    "alg": "HS512",
    "kid": "28a318f7-0000-a1eb-7fa1-2c7433c6cca5"
  };

}