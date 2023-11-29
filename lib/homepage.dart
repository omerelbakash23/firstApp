// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:apis/controller/productcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  ProductModelcontroller controllers = Get.put(ProductModelcontroller());
  @override
  Widget build(BuildContext context) {
    return Obx(() => controllers.isloading.value
        ?  SafeArea(child:Scaffold(appBar: AppBar(backgroundColor: Colors.orange,),body: 
           const Center(
              child: CircularProgressIndicator(
              color: Colors.orange,
            )),
        ))
        : SafeArea(
            child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text("OurProduct")),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .8,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: controllers.Productslist.length,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.black45,
                                  height:
                                      MediaQuery.of(context).size.height * .6,
                                  width: MediaQuery.of(context).size.width * .4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                            Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    "${controllers.Productslist[index].title}",textAlign: TextAlign.center,),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${controllers.Productslist[index].id}",
                                                style: const TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    "${controllers.Productslist[index].body}",textAlign: TextAlign.center,),
                                              ),
                                            ],
                                          ),   Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "${controllers.Productslist[index].userId}",
                                                style: const TextStyle(fontSize: 30),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ]),
                                  ),
                                ),
                              )),
                    )
                  ]),
            ),
          )));
  }
}
