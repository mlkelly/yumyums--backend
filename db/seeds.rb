# if have estra time srape recipes from api

classes = [Ingredient, User, Recipe, Review, RecIngred]
classes.each{|c|
    c.destroy_all 
    c.reset_pk_sequence #resets PKs when run rails db:seed
}

i1 = Ingredient.create(name: "Butter")
i2 = Ingredient.create(name: "Sourdough Bread")
i3 = Ingredient.create(name: "Cheddar Cheese")
i4 = Ingredient.create(name: "Truffle Mushrooms")
i5 = Ingredient.create(name: "Onion")

u1 = User.create(username: "mlk1000", bio:"Food artist", img: "https://www.sackettwaconia.com/wp-content/uploads/default-profile.png")

recipe1 = Recipe.create(title:"Truffle Grilled Cheese", abt: "Quick and Easy Twist on the Classic Grilled Cheese", user_id: u1.id)

rec1 = RecIngred.create(amount:"2 tbsp", instruction:"Heartily apply to both sides of each slice", recipe_id: recipe1.id,ingredient_id: i1.id)
rec2 = RecIngred.create(amount:"2 slices", instruction:"Once buttered toast up on the frying pan", recipe_id: recipe1.id,ingredient_id: i2.id)
rec3 = RecIngred.create(amount:"2 slices", instruction:"Put one slice on each piece of bread", recipe_id: recipe1.id,ingredient_id: i3.id)
rec4 = RecIngred.create(amount:"1/8 cup", instruction:"Place in between the two slices of cheese", recipe_id: recipe1.id,ingredient_id: i4.id)
rec5 = RecIngred.create(amount:"1/8 cup diced", instruction:"Sautee until translucent, add to the middle of the sandwich with mushrooms", recipe_id: recipe1.id,ingredient_id: i5.id)

review1 = Review.create(rating: 4,reason: "Really great taste, but too many onions, not enough cheese", user_id: u1.id, recipe_id: recipe1.id)