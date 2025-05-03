import 'dart:async';

import 'package:flytech/model/data_models/Job_model.dart';
import 'package:flytech/model/providers/jobList_provider.dart';
import 'package:get/get.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class HomePageController extends GetxController {
  var jobList = <Job>[].obs;
  var isLoading = true.obs;

  //ads page
  InfiniteScrollController adsScrollController = InfiniteScrollController();

  @override
  void onInit() {
    super.onInit();
    getJobList();
    showDelayedAds();
  }

  getJobList() async {
    isLoading.value = true;
    await JoblistProvider().getJobList().then(
      (value) {
        if (value != null) {
          jobList.addAll(value);
        }
      },
    );
    isLoading.value = false;
  }

  showDelayedAds() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Get.toNamed("/splashAds");
      },
    );
  }
}
