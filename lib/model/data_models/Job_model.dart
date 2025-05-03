// To parse this JSON data, do
//
//     final Job = JobFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Job> JobFromJson(String str) => List<Job>.from(json.decode(str).map((x) => Job.fromJson(x)));

String JobToJson(List<Job> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Job {
  final String link;
  final String company;
  final String jobTitle;
  final String jd1;
  final String jd2;
  final String jobType;
  final String location;
  final String payment;

  Job({
    required this.link,
    required this.company,
    required this.jobTitle,
    required this.jd1,
    required this.jd2,
    required this.jobType,
    required this.location,
    required this.payment,
  });

  factory Job.fromJson(Map<String, dynamic> json) => Job(
        link: json["link"],
        company: json["company"],
        jobTitle: json["jobTitle"],
        jd1: json["jd1"],
        jd2: json["jd2"],
        jobType: json["jobType"],
        location: json["location"],
        payment: json["payment"],
      );

  Map<String, dynamic> toJson() => {
        "link": link,
        "company": company,
        "jobTitle": jobTitle,
        "jd1": jd1,
        "jd2": jd2,
        "jobType": jobType,
        "location": location,
        "payment": payment,
      };
}
