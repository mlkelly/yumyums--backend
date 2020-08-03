# if have estra time srape recipes from api

# classes = [Ingredient, User, Recipe, Review, RecIngred]
classes = [RecIngred, Ingredient, Review, Recipe, User]
classes.each{|c|
    c.destroy_all 
    c.reset_pk_sequence #resets PKs when run rails db:seed
}

i1 = Ingredient.create(name: "Butter")
i2 = Ingredient.create(name: "Sourdough Bread")
i3 = Ingredient.create(name: "Cheddar Cheese")
i4 = Ingredient.create(name: "Truffle Mushrooms")
i5 = Ingredient.create(name: "Onion")
i6 = Ingredient.create(name: "Dill Seed")
i7 = Ingredient.create(name: "Cucumber")
i8 = Ingredient.create(name: "Vinegar")
i9 = Ingredient.create(name: "Garlic")
i10 = Ingredient.create(name: "Salt")
i11 = Ingredient.create(name: "Jalapeno")


u1 = User.create(username: "mlk1000", bio:"Food artist", password:"password", img:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1542062283%2Fchocolate-and-cream-layer-cake-1812-cover.jpg%3Fitok%3DR_xDiShk")
u2 = User.create(username: "cookingmama", bio: "master mama, mediocre chef", password:"password", img: "https://vignette.wikia.nocookie.net/cookingmama/images/1/15/DrNYzs6VsAA-nHj.jpg/revision/latest?cb=20190821123937")
u3 = User.create(username: "gramsy", bio:"master chef of hell's kitchen", password:"password", img:"https://i.imgflip.com/2lwcyg.jpg")

recipe1 = Recipe.create(title:"Truffle Grilled Cheese", abt: "Quick and Easy Twist on the Classic Grilled Cheese", user_id: u1.id, img: "https://images.squarespace-cdn.com/content/v1/55521cc5e4b0e3bbbdd84a3a/1555106328091-3HU0MUDUHXIQQC7GGZHC/ke17ZwdGBToddI8pDm48kIyrSAlZw0scgxWGiTRYQWl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UQDXLzkH-CZ-7QKrQsh4p8lMtwqAKlza9eqEnfdUjYfAWTUnGzk3zJjDKAJuKMwn7w/Truffle+grilled+cheese+sandwiches-13.jpg")
recipe2 = Recipe.create(title:"Tofu and Soy Chorizo Tacos", abt: "a vegetarian friendly alternative to ground beef tacos", user_id: u3.id, img: "https://www.wellplated.com/wp-content/uploads/2019/01/Baked-Tofu-Tacos-500x500.jpg")
recipe3 = Recipe.create(title:"Bryk Dill Pickles", abt: "the Bryk family's take on summer dill pickles", user_id: u2.id, img:"https://www.frugalfarmwife.com/wp-content/uploads/2018/06/IMG_2289.jpg")


rec1 = RecIngred.create(amount:"2 tbsp", instruction:"Heartily apply to both sides of each slice", recipe_id: recipe1.id,ingredient_id: i1.id)
rec2 = RecIngred.create(amount:"2 slices", instruction:"Once buttered toast up on the frying pan", recipe_id: recipe1.id,ingredient_id: i2.id)
rec3 = RecIngred.create(amount:"2 slices", instruction:"Put one slice on each piece of bread", recipe_id: recipe1.id,ingredient_id: i3.id)
rec4 = RecIngred.create(amount:"1/8 cup", instruction:"Place in between the two slices of cheese", recipe_id: recipe1.id,ingredient_id: i4.id)
rec5 = RecIngred.create(amount:"1/8 cup diced", instruction:"Sautee until translucent, add to the middle of the sandwich with mushrooms", recipe_id: recipe1.id,ingredient_id: i5.id)

rec1 = RecIngred.create(amount:"a pinch", instruction:"mix into liquid to taste", recipe_id: recipe3.id,ingredient_id: i10.id)
rec2 = RecIngred.create(amount:"3 medium-sized", instruction:"cut into spars or chips", recipe_id: recipe3.id,ingredient_id: i7.id)
rec3 = RecIngred.create(amount:"1 clove", instruction:"finely mince and add to jar", recipe_id: recipe3.id,ingredient_id: i9.id)
rec4 = RecIngred.create(amount:"1", instruction:"finely chop, remove seeds for more mild", recipe_id: recipe3.id,ingredient_id: i11.id)
rec5 = RecIngred.create(amount:"2.5 cups", instruction:"add to jar, fill the rest with tap water", recipe_id: recipe3.id,ingredient_id: i8.id)


review1 = Review.create(rating: 4,reason: "Really great taste, but too many onions, not enough cheese", user_id: u1.id, recipe_id: recipe1.id)
review2 = Review.create(rating: 4,reason: "love <333 the addition of jalapenos!!!", user_id: u1.id, recipe_id: recipe3.id)