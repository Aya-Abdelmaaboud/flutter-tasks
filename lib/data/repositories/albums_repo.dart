import 'package:dio/dio.dart';
import 'package:ecommerc_project/data/models/albums_model.dart';
import 'package:ecommerc_project/utils/constants.dart';

class AlbumsRepo {
  final dio = Dio();

  Future<List<AlbumsModel>> getAlbums() async {
    final response = await dio.get(baseUrl + getAlbumsEndPoint);
    List myData = response.data as List;
    List<AlbumsModel> myAlbums = [];
    for (var i = 0; i < myData.length; i++) {
      final AlbumsModel modelResponse = AlbumsModel.fromJson(myData[i]);
      myAlbums.add(modelResponse);
    }
    myAlbums.forEach((element) {
      print(element.title);
    });
    // print('final result: $myAlbums');
    // // final AlbumsModel modelResponse = AlbumsModel.fromJson(response.data);
    // print('albums are: $response');
    return myAlbums;
  }
}
