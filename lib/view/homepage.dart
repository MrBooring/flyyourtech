import 'package:flutter/material.dart';
import 'package:flytech/view/widgets/card.dart';
import 'package:get/get.dart';

import '../controllers/controllers/homePagecontroller.dart';

class Homepage extends GetView<HomePageController> {
  Homepage({super.key});

  var filterTypes = ["Filter", "Experience", "Salary", "Remote", "Remote"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            style: IconButton.styleFrom(
              shadowColor: Colors.black,
              elevation: 4,
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/bookmark.png",
              fit: BoxFit.fill,
              width: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/bell.png",
              fit: BoxFit.fill,
              width: 20,
            ),
            style: IconButton.styleFrom(
              shadowColor: Colors.black,
              elevation: 4,
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SizedBox(
        height: size.height,
        child: Obx(() => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                shrinkWrap: true,
                itemCount: controller.jobList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustCard(
                      link: controller.jobList[index].link,
                      company: controller.jobList[index].company,
                      jobTitle: controller.jobList[index].jobTitle,
                      jd1: controller.jobList[index].jd1,
                      jd2: controller.jobList[index].jd2,
                      jobType: controller.jobList[index].jobType,
                      location: controller.jobList[index].location,
                      payment: controller.jobList[index].payment,
                    ),
                  );
                },
              )),
      )),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).viewInsets.bottom > 0 ? size.height * .61 : size.height * .25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -4), // shadow above the container
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: size.height * .06,
                child: ListView.builder(
                  itemCount: filterTypes.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                        child: Material(
                          elevation: 4,
                          shadowColor: Colors.black,
                          shape: const StadiumBorder(),
                          child: Chip(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(
                              side: BorderSide(
                                width: 0,
                                color: Colors.transparent,
                              ),
                            ),
                            label: Text(filterTypes[index]),
                          ),
                        ));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search anything',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    prefixIcon: Icon(Icons.search, color: Theme.of(context).colorScheme.primary),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.mic, color: Theme.of(context).colorScheme.primary), // Voice icon
                          SizedBox(width: 8),
                          Icon(Icons.send, color: Theme.of(context).colorScheme.primary),
                        ],
                      ),
                    ), // Send icon
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30), // Stadium shape
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30), // Stadium shape
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width * .4,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary, // filled color
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // optional for rounded look
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Get Jobs Daily"),
                          SizedBox(width: 8),
                          Image.asset(
                            "assets/icons/details.png",
                            fit: BoxFit.fill,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .4,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary, // filled color
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // optional for rounded look
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Make Resume"),
                          SizedBox(width: 8),
                          Image.asset(
                            "assets/icons/details.png",
                            fit: BoxFit.fill,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
