// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<NearbyRestaurants> nearbyRestaurantsFromJson(String str) =>
    List<NearbyRestaurants>.from(
        json.decode(str).map((x) => NearbyRestaurants.fromJson(x)));

String nearbyRestaurantsToJson(List<NearbyRestaurants> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NearbyRestaurants {
  NearbyRestaurants({
    this.campaigns,
    this.favoriteRestaurants,
    this.menuCategories,
    this.paybacks,
    this.restaurantPhotos,
    this.restaurantProfileVisits,
    this.restaurantPropertyLists,
    this.restaurantVideos,
    this.reviews,
    this.tips,
    this.restaurantName,
    this.city,
    this.district,
    this.neighborhood,
    this.baseAdress,
    this.lat,
    this.long,
    this.averageWageForTwoPeople,
    this.restaurantType,
    this.openingTime,
    this.closingTime,
    this.isActive,
    this.restaurantInfo,
    this.commissionPercentage,
    this.paybackPercentage,
    this.rating,
    this.reviewCount,
    this.profilePicturePath,
    this.phoneNumber,
    this.contactEmail,
    this.instagramUrl,
    this.facebookUrl,
    this.websiteUrl,
    this.closedDay1,
    this.closedDay2,
    this.currency,
    this.isTypeCoffee,
    this.isTypeDinner,
    this.isTypeBreakfast,
    this.isTypeDessert,
    this.isTypeOpenAir,
    this.id,
    this.createdOn,
  });

  List<dynamic>? campaigns;
  List<dynamic>? favoriteRestaurants;
  List<dynamic>? menuCategories;
  List<dynamic>? paybacks;
  List<dynamic>? restaurantPhotos;
  List<dynamic>? restaurantProfileVisits;
  List<dynamic>? restaurantPropertyLists;
  List<dynamic>? restaurantVideos;
  List<dynamic>? reviews;
  List<dynamic>? tips;
  String? restaurantName;
  String? city;
  String? district;
  String? neighborhood;
  String? baseAdress;
  String? lat;
  String? long;
  int? averageWageForTwoPeople;
  String? restaurantType;
  String? openingTime;
  String? closingTime;
  bool? isActive;
  String? restaurantInfo;
  int? commissionPercentage;
  int? paybackPercentage;
  double? rating;
  int? reviewCount;
  String? profilePicturePath;
  String? phoneNumber;
  String? contactEmail;
  String? instagramUrl;
  String? facebookUrl;
  String? websiteUrl;
  dynamic closedDay1;
  dynamic closedDay2;
  String? currency;
  bool? isTypeCoffee;
  bool? isTypeDinner;
  bool? isTypeBreakfast;
  bool? isTypeDessert;
  bool? isTypeOpenAir;
  int? id;
  DateTime? createdOn;

  factory NearbyRestaurants.fromJson(Map<String, dynamic> json) =>
      NearbyRestaurants(
        campaigns: List<dynamic>.from(json["Campaigns"].map((x) => x)),
        favoriteRestaurants:
            List<dynamic>.from(json["FavoriteRestaurants"].map((x) => x)),
        menuCategories:
            List<dynamic>.from(json["MenuCategories"].map((x) => x)),
        paybacks: List<dynamic>.from(json["Paybacks"].map((x) => x)),
        restaurantPhotos:
            List<dynamic>.from(json["RestaurantPhotos"].map((x) => x)),
        restaurantProfileVisits:
            List<dynamic>.from(json["RestaurantProfileVisits"].map((x) => x)),
        restaurantPropertyLists:
            List<dynamic>.from(json["RestaurantPropertyLists"].map((x) => x)),
        restaurantVideos:
            List<dynamic>.from(json["RestaurantVideos"].map((x) => x)),
        reviews: List<dynamic>.from(json["Reviews"].map((x) => x)),
        tips: List<dynamic>.from(json["Tips"].map((x) => x)),
        restaurantName: json["RestaurantName"],
        city: json["City"],
        district: json["District"],
        neighborhood: json["Neighborhood"],
        baseAdress: json["BaseAdress"],
        lat: json["Lat"],
        long: json["Long"],
        averageWageForTwoPeople: json["AverageWageForTwoPeople"],
        restaurantType: json["RestaurantType"],
        openingTime: json["OpeningTime"],
        closingTime: json["ClosingTime"],
        isActive: json["isActive"],
        restaurantInfo: json["RestaurantInfo"],
        commissionPercentage: json["CommissionPercentage"],
        paybackPercentage: json["PaybackPercentage"],
        rating: json["Rating"].toDouble(),
        reviewCount: json["ReviewCount"],
        profilePicturePath: json["ProfilePicturePath"],
        phoneNumber: json["PhoneNumber"],
        contactEmail: json["ContactEmail"],
        instagramUrl: json["InstagramUrl"],
        facebookUrl: json["FacebookUrl"],
        websiteUrl: json["WebsiteUrl"],
        closedDay1: json["ClosedDay1"],
        closedDay2: json["ClosedDay2"],
        currency: json["Currency"],
        isTypeCoffee: json["isTypeCoffee"],
        isTypeDinner: json["isTypeDinner"],
        isTypeBreakfast: json["isTypeBreakfast"],
        isTypeDessert: json["isTypeDessert"],
        isTypeOpenAir: json["isTypeOpenAir"],
        id: json["Id"],
        createdOn: DateTime.parse(json["CreatedOn"]),
      );

  Map<String, dynamic> toJson() => {
        "Campaigns": List<dynamic>.from(campaigns!.map((x) => x)),
        "FavoriteRestaurants":
            List<dynamic>.from(favoriteRestaurants!.map((x) => x)),
        "MenuCategories": List<dynamic>.from(menuCategories!.map((x) => x)),
        "Paybacks": List<dynamic>.from(paybacks!.map((x) => x)),
        "RestaurantPhotos": List<dynamic>.from(restaurantPhotos!.map((x) => x)),
        "RestaurantProfileVisits":
            List<dynamic>.from(restaurantProfileVisits!.map((x) => x)),
        "RestaurantPropertyLists":
            List<dynamic>.from(restaurantPropertyLists!.map((x) => x)),
        "RestaurantVideos": List<dynamic>.from(restaurantVideos!.map((x) => x)),
        "Reviews": List<dynamic>.from(reviews!.map((x) => x)),
        "Tips": List<dynamic>.from(tips!.map((x) => x)),
        "RestaurantName": restaurantName,
        "City": city,
        "District": district,
        "Neighborhood": neighborhood,
        "BaseAdress": baseAdress,
        "Lat": lat,
        "Long": long,
        "AverageWageForTwoPeople": averageWageForTwoPeople,
        "RestaurantType": restaurantType,
        "OpeningTime": openingTime,
        "ClosingTime": closingTime,
        "isActive": isActive,
        "RestaurantInfo": restaurantInfo,
        "CommissionPercentage": commissionPercentage,
        "PaybackPercentage": paybackPercentage,
        "Rating": rating,
        "ReviewCount": reviewCount,
        "ProfilePicturePath": profilePicturePath,
        "PhoneNumber": phoneNumber,
        "ContactEmail": contactEmail,
        "InstagramUrl": instagramUrl,
        "FacebookUrl": facebookUrl,
        "WebsiteUrl": websiteUrl,
        "ClosedDay1": closedDay1,
        "ClosedDay2": closedDay2,
        "Currency": currency,
        "isTypeCoffee": isTypeCoffee,
        "isTypeDinner": isTypeDinner,
        "isTypeBreakfast": isTypeBreakfast,
        "isTypeDessert": isTypeDessert,
        "isTypeOpenAir": isTypeOpenAir,
        "Id": id,
        "CreatedOn": createdOn?.toIso8601String(),
      };
}
