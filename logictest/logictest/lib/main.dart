import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:logictest/data/data.dart';
import 'data/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Listview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Model model = Model.fromJson(json.decode(res.trim()));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tree View"),),
      body: ListView.builder( // outer ListView
        itemCount: model.vpcs?.length ?? 0,
        itemBuilder: (_, index) {
          return Column(
            children: [
              ListTile(
                minLeadingWidth: 0,
                title: Text(model.vpcs![index].name.toString()),
                  style: ListTileStyle.drawer,
                  leading: GestureDetector(
                      onTap: () {
                        model.vpcs![index].isShow = !model.vpcs![index].isShow;
                        setState(() {});
                        },
                      child: Icon(model.vpcs![index].isShow ? Icons.remove_circle_outline : Icons.add_circle_outline,size: 20,color: Colors.black,)),
              ),
              model.vpcs![index].isShow ? ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: model.vpcs![index].clusters?.length ?? 0,
                itemBuilder: (_, index1) => Column(
                  children: [
                    ListTile(
                      minLeadingWidth: 0,
                      title: Text(model.vpcs![index].clusters![index1].name.toString()),
                      style: ListTileStyle.drawer,
                      leading: GestureDetector(
                          onTap: () {
                            model.vpcs![index].clusters![index1].isShow = !model.vpcs![index].clusters![index1].isShow;
                            setState(() {});
                          },
                          child: Icon(model.vpcs![index].clusters![index1].isShow ? Icons.remove_circle_outline : Icons.add_circle_outline,size: 20,color: Colors.black,)),
                    ),
                    model.vpcs![index].clusters![index1].isShow ? ListView.builder(
                      padding: const EdgeInsets.only(left: 20),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: model.vpcs![index].clusters![index1].products?.length ?? 0,
                      itemBuilder: (_, index2) =>
                      Column(
                        children: [
                          ListTile(
                            minLeadingWidth: 0,
                            title: Text(model.vpcs![index].clusters![index1].products![index2].name.toString()),
                            style: ListTileStyle.drawer,
                            leading: GestureDetector(
                                onTap: () {
                                  model.vpcs![index].clusters![index1].products![index2].isShow = !model.vpcs![index].clusters![index1].products![index2].isShow;
                                  setState(() {});
                                },
                                child: Icon(model.vpcs![index].clusters![index1].products![index2].isShow ? Icons.remove_circle_outline : Icons.add_circle_outline,size: 20,color: Colors.black,)),
                          ),
                          model.vpcs![index].clusters![index1].products![index2].isShow ? ListView.builder(
                            padding: const EdgeInsets.only(left: 20),
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: model.vpcs![index].clusters![index1].products![index2].environments?.length ?? 0,
                            itemBuilder: (_, index3) =>
                            Column(
                              children: [
                                ListTile(
                                  title: Text(model.vpcs![index].clusters![index1].products![index2].environments![index3].name.toString()),
                                  style: ListTileStyle.drawer,
                                  minLeadingWidth: 0,
                                  leading: GestureDetector(
                                      onTap: () {
                                        model.vpcs![index].clusters![index1].products![index2].environments![index3].isShow = !model.vpcs![index].clusters![index1].products![index2].environments![index3].isShow;
                                        setState(() {});
                                      },
                                      child: Icon(model.vpcs![index].clusters![index1].products![index2].environments![index3].isShow ? Icons.remove_circle_outline : Icons.add_circle_outline,size: 20,color: Colors.black,)),
                                ),
                                if(model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.common !=null && model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.common!.isNotEmpty)
                                  model.vpcs![index].clusters![index1].products![index2].environments![index3].isShow ? Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: ListTile(
                                          minLeadingWidth: 0,
                                          title: const Text("COMMON"),
                                          style: ListTileStyle.drawer,
                                          leading: GestureDetector(
                                              onTap: () {
                                                model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.isShowC = !model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.isShowC;
                                                setState(() {});
                                              },
                                              child: Icon(model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.isShowC ? Icons.remove_circle_outline : Icons.add_circle_outline,size: 20,color: Colors.black,)),
                                        ),
                                      ),
                                      model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.isShowC ? ListView.builder(
                                        padding: const EdgeInsets.only(left: 60),
                                        shrinkWrap: true,
                                        physics: const ClampingScrollPhysics(),
                                        itemCount: model.vpcs![index].clusters![index1].products![index2].environments![index3].services?.common?.length ?? 0,
                                        itemBuilder: (_, index4) =>  ListTile(minLeadingWidth: 0,title: Text(model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.common![index4].name.toString()))
                                      ) : const SizedBox(),
                                    ],
                                  ) : const SizedBox(),
                                if(model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.business !=null && model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.business!.isNotEmpty)
                                  model.vpcs![index].clusters![index1].products![index2].environments![index3].isShow ? Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: ListTile(
                                          minLeadingWidth: 10,
                                          title: const Text("Business"),
                                          style: ListTileStyle.drawer,
                                          leading: GestureDetector(
                                              onTap: () {
                                                model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.isShowB = !model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.isShowB;
                                                setState(() {});
                                              },
                                              child: Icon(model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.isShowB ? Icons.remove_circle_outline : Icons.add_circle_outline,size: 20,color: Colors.black,)),
                                        ),
                                      ),
                                      model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.isShowB ? ListView.builder(
                                        padding: const EdgeInsets.only(left: 60),
                                        shrinkWrap: true,
                                        physics: const ClampingScrollPhysics(),
                                        itemCount: model.vpcs![index].clusters![index1].products![index2].environments![index3].services?.business?.length ?? 0,
                                        itemBuilder: (_, index4) => ListTile(minLeadingWidth: 0,title: Text(model.vpcs![index].clusters![index1].products![index2].environments![index3].services!.business![index4].name.toString())),
                                      ) : const SizedBox(),
                                    ],
                                  ) : const SizedBox(),
                              ],
                            ),
                          ) : const SizedBox()
                        ],
                      ),
                    ) : const SizedBox()
                  ],
                ),
              ) : const SizedBox()
            ],
          );
        },
      )
    );
  }
}
