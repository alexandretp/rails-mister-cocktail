Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list' 
ingredients_serialized = open(url).read 
ingredients = JSON.parse(ingredients_serialized) 
ingredients["drinks"].each do |ingredient| 
  Ingredient.create!(name: ingredient["strIngredient1"]) 
end
