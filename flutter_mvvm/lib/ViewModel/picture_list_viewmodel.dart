import 'dart:developer';

import 'package:flutter_mvvm/Models/picture.dart';
import 'package:flutter_mvvm/Service/services.dart';

class PictureListViewModel {
  late List<PictureViewModel> pictures;

  Future<void> fetchPicture () async {
    final apiResult = await Services().fetchPictureAPI();
    this.pictures = apiResult!.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  late final PicSumModel? picSumModel;

  PictureViewModel(this.picSumModel);
}