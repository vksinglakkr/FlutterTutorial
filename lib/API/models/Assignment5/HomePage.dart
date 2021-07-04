import 'dart:convert';
//import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart';
import 'package:flutter_tutorial/API/models/Assignment5/model.dart';

class HomePage5 extends StatefulWidget {
  @override
  _HomePage5State createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  List<RecipeModel> recipeList = <RecipeModel>[];
  TextEditingController searchController = new TextEditingController();

  Future getRecipes(String query) async {
    recipeList.clear();
    Response response = await get(Uri.parse(
        'https://api.edamam.com/search?q=$query&app_id=ebb6041c&app_key=3c33ad913ab23b8554082bfb5fdd78b5'));
    Map data = jsonDecode(response.body);
    RecipeModel recipeModel = new RecipeModel();

    data["hits"].forEach((element) {
      recipeModel = RecipeModel.fromMap(element["recipe"]);
      setState(() {
        recipeList.add(recipeModel);
      });
      //    log(recipeList.toString());
    });

    // ignore: non_constant_identifier_names
    recipeList.forEach((Recipe) {
      print(Recipe.applabel);
//      print(Recipe.appcalories);
    });
  }

  @override
  void initState() {
    super.initState();
    if ((searchController.text).replaceAll(" ", "") == "") {
      print("Blank search");
    } else {
      getRecipes(searchController.text);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Assignment 1 \n Models")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff213A50), Color(0xff071938)]),
            ),
          ),
          Column(
            children: [
              //Search Bar
              Container(
                //Search Wala Container

                padding: EdgeInsets.symmetric(horizontal: 8),
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
//                        if ((searchController.text).replaceAll(" ", "") == "") {
                        //                        print("Blank search");
                        //                    } else {
                        getRecipes(searchController.text);
                        //                  }
                      },
                      child: Container(
                        child: Icon(
                          Icons.search,
                          color: Colors.blueAccent,
                        ),
                        margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Let's Cook Something!"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WHAT DO YOU WANT TO COOK TODAY?",
                      style: TextStyle(fontSize: 33, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Let's Cook Something New!",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: recipeList == null ? 0 : recipeList.length,
                          itemBuilder: (context, index) {
                            RecipeModel recipe = recipeList[index];
                            return Text(recipe.applabel);
//                                  subtitle: Text(recipe.appcalories.toString()),
                          }),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
