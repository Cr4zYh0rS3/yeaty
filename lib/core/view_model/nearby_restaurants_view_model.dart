import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:yeaty/core/api/api_url.dart';
import 'package:yeaty/core/model/nearby_restaurants_model.dart';
part 'nearby_restaurants_view_model.g.dart';

class NearbyRestaurantsViewModel = _NearbyRestaurantsViewModelBase
    with _$NearbyRestaurantsViewModel;

abstract class _NearbyRestaurantsViewModelBase with Store {
  final nearbyRestaurants = NearbyRestaurants();

  @observable
  List? nearbyRestaurantsList = [];

  @action
  Future postNearbyRestaurants(String term) async {
    var result;
    try {
      var response = await http.get(
          Uri.parse(kApiUrl +
              "Explore/GetExploreResultNearbyRestaurants?type=1" +
              term),
          headers: {
            "Authorization":
                "Bearer ${ObSharedPreferences.getStringData("_handShakeToken").toString()}",
            "Accept": "application/json"
          });
      print("search Code:" + response.statusCode.toString());
      print(response.body.toString());
      if (response.statusCode == 200) {
        result = searchResultsFromJson(response.body.toString());
        for (int i = 0; i < result.data.appModelsOffer.length; i++) {
          print(result.data.appModelsOffer[i].title);
          searchOffersResultList.add(result.data.appModelsOffer[i]);
        }
        for (int i = 0; i < result.data.appModelsBlogPost.length; i++) {
          searchPostResultList.add(result.data.appModelsBlogPost[i]);
        }
        print(searchOffersResultList.length);
      }
    } catch (e, st) {
      print("HomeSearch HATAA" + e.toString());
      print("HomeSearch HATAA" + st.toString());
    }
  }
}
