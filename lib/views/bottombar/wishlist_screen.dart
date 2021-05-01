import 'package:flutter/material.dart';
import 'package:recipeapp/dummyData/recipe_data.dart';
import 'package:recipeapp/views/detail_screen.dart';
import 'package:recipeapp/views/widgets/widgets.dart';


class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text("Wishlist"),
      ),
      body: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: buildRecipes(),
      ),
    );
  }

  List<Widget> buildRecipes(){
    List<Widget> list = [];
    for (var i = 0; i < getRecipes().length; i++) {
      list.add(buildRecipe(getRecipes()[i], i));
    }
    return list;
  }

  Widget buildRecipe(Recipe recipe, int index){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen(recipe: recipe)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 0),
          )],
        ),
        margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0, bottom: 16, top: 8),
        padding: EdgeInsets.all(16),
        width: 220,
        child: Container(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Expanded(
                child: Hero(
                  tag: recipe.image,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(recipe.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              buildRecipeTitle(recipe.title),

              buildTextSubTitleVariation2(recipe.description),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  buildCalories(recipe.calories.toString() + " Kcal"),

//                  Icon(
//                    Icons.favorite_border,
//                  )

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
