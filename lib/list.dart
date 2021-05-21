
List images=["images/image1.jpg","images/image2.jpg","images/image3.jpg","images/image4.jpg","images/image5.jpg"];
List name=["Doro Wet  ","Shekal Tibs","beyaynetu","Kitfo","Shiro Tegabino"];
var indexv=null;

    class Wets {
    String image;
    String name;
    List<String> recipe;
    Wets({required this.image, required this.name, required this.recipe});
    }


    class ListOfWets{
      List<Wets> _listOfWets = [];
      ListOfWets(){
        _listOfWets.add(Wets(image:"images/image1.jpg", name: "Doro Wet  ", recipe: [
          "Doro Wet :-"
          "       \n3 pounds boneless chicken breasts and thighs, cut into 1-inch cubes",
          "        2 large onions chopped",
          "         4 cloves garlic minced",
          "         1 cup butter",
          "         1 cup red wine",
          "         2 cups water",
          "         2 teaspoons salt",
          "         1 teaspoon ground\n        cardamom",
          "         2 tablespoons\n        garam masala",
          "         1/3 cup hot \n         smoked paprika",

        ] ));
        _listOfWets.add(Wets(image:"images/image2.jpg",name: "Shekal Tibs",recipe: [
        "    1.In a large bowl add the beef and 2 tablespoons of olive oil.   "
            " Season beef with the berbere and salt,to taste.    "
            "Let the beef marinate with spices for about 30 minutes    ",
          " 2.Put remaining 2 tablespoons of olive oil in a medium saucepan and put over medium heat.    "
              " Add the tomatoes and onions and stir for 5 minutes.   "
              " Add the marinated beef and cook for another 10 minutes, stirring consistently,    "
              " to ensure even cooking. Once the liquid in the pan begins to boil continue cooking for another 5 minutes.   "
              " Remove the pan from heat and stir in the jalapenos.    "
              "Serve warm with desired bread as an optional side.    "
          ]));
        _listOfWets.add(Wets(image:"images/image3.jpg",name: "Yetsom beyaynetu",recipe: [
          "3 pounds  boneless chicken breasts and thighs, cut into 1-inch cubes",
          "2 large onions chopped",
          "4 cloves garlic minced",
          "1 cup butter",
          "1 cup red wine",
          "2 cups water",
          "2 teaspoons salt",
          "1 teaspoon ground cardamom",
          "2 tablespoons garam masala",
          "1/3 cup hot smoked paprika",]));
        _listOfWets.add(Wets(image:"images/image4.jpg",name: "Kitfo",recipe: [
          "3 pounds  boneless chicken breasts and thighs, cut into 1-inch cubes",
          "2 large onions chopped",
          "4 cloves garlic minced",
          "1 cup butter",
          "1 cup red wine",
          "2 cups water",
          "2 teaspoons salt",
          "1 teaspoon ground cardamom",
          "2 tablespoons garam masala",
          "1/3 cup hot smoked paprika",]));
        _listOfWets.add(Wets(image:"images/image5.jpg",name: "Shiro Tegabino",recipe: [
          "3 pounds  boneless chicken breasts and thighs, cut into 1-inch cubes",
          "2 large onions chopped",
          "4 cloves garlic minced",
          "1 cup butter",
          "1 cup red wine",
          "2 cups water",
          "2 teaspoons salt",
          "1 teaspoon ground cardamom",
          "2 tablespoons garam masala",
          "1/3 cup hot smoked paprika",]));


      }

      List<Wets> get getListOfWets => _listOfWets;
    }
