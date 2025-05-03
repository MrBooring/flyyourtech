import 'dart:developer';

import 'package:get/get.dart';

import '../data_models/Job_model.dart';

class JoblistProvider extends GetConnect {
  Future getJobList() async {
    try {
      Response response = await get(
        "https://mocki.io/v1/29406109-8ee3-49fc-ba8b-5820489840b4",
      );

      if (response.statusCode == 200) {
        List<Job> jobs = (response.body as List).map((e) => Job.fromJson(e)).toList();
        return jobs;
      }
    } catch (e) {
      log("Exception in getJobList Provider :===================== \n ${e}");
    }
  }
}
