import 'package:freezed_annotation/freezed_annotation.dart';

import 'common/data.dart';
part 'asset_data.freezed.dart';
part 'asset_data.g.dart';

@freezed
class AssetData with _$AssetData {
  const factory AssetData({
    required List<Data> data,
  }) = _AssetData;

  factory AssetData.fromJson(Map<String, dynamic> json) => _$AssetDataFromJson(json);

}

//
//   List<Data> data;
//
//   factory AssetData.fromRawJson(String str) =>
//       AssetData.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory AssetData.fromJson(Map<String, dynamic> json) => AssetData(
//         data: json["data"] == null
//             ? null
//             : List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "data": data == null
//             ? null
//             : List<dynamic>.from(data.map((x) => x.toJson())),
//       };
// }
