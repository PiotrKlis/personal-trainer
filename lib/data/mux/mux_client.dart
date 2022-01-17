import 'package:dio/dio.dart';

import 'model/asset_data.dart';
import 'model/video_data.dart';
import 'mux_strings.dart';

class MUXClient {
  Dio _dio = Dio();

  initializeDio() {
    BaseOptions options = BaseOptions(
      baseUrl: muxServerUrl,
      connectTimeout: 8000,
      receiveTimeout: 5000,
      headers: {
        "Content-Type": contentType, // application/json
      },
    );
    _dio = Dio(options);
  }

  Future<VideoData?> storeVideo({required String videoUrl}) async {
    Response response;

    try {
      response = await _dio.post(
        "/assets",
        data: {
          "videoUrl": videoUrl,
        },
      );
    } catch (e) {
      print('Error starting build: $e');
      throw Exception('Failed to store video on MUX');
    }

    if (response.statusCode == 200) {
      VideoData? videoData = VideoData.fromJson(response.data);

      String? status = videoData.data.status;

      while (status == 'preparing') {
        print('processing...');
        await Future.delayed(Duration(seconds: 1));
        videoData = await checkPostStatus(videoId: videoData?.data.id);
        status = videoData?.data.status;
      }

      return videoData;
    }

    return null;
  }

  Future<VideoData?> checkPostStatus({required String? videoId}) async {
    try {
      Response response = await _dio.get(
        "/asset",
        queryParameters: {
          'videoId': videoId,
        },
      );

      if (response.statusCode == 200) {
        VideoData videoData = VideoData.fromJson(response.data);

        return videoData;
      }
    } catch (e) {
      print('Error starting build: $e');
      throw Exception('Failed to check status');
    }

    return null;
  }

  Future<AssetData?> getAssetList() async {
    try {
      Response response = await _dio.get(
        "/assets",
      );

      if (response.statusCode == 200) {
        AssetData assetData = AssetData.fromJson(response.data);

        return assetData;
      }
    } catch (e) {
      print('Error starting build: $e');
      throw Exception('Failed to retrieve videos from MUX');
    }

    return null;
  }
}
