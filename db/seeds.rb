# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.delete_all


10.times do
 Ingredient.create(name: Faker::Food.ingredient)
 puts "created ingredient"
end

Cocktail.delete_all

20.times do
 cocktail = Cocktail.new(name: "The " + Faker::HowIMetYourMother.catch_phrase)
 urls = ['http://www.fedupusa.org/wp-content/uploads/2016/07/Cocktail.jpg', 'https://assets.punchdrink.com/wp-content/uploads/2014/02/Stinger1.jpg', 'https://cdn.vox-cdn.com/thumbor/uTBbX-v-ehrAy7RkF3dUUY-Ohcw=/0x0:5568x3712/1200x900/filters:focal(2271x1684:3161x2574)/cdn.vox-cdn.com/uploads/chorus_image/image/58751895/goodnight_charlies_cocktail.0.jpg', 'https://s3.us-east-2.amazonaws.com/chrissy-tuxedo-no2/1500x861recipe-bijou-cocktail-recipe.jpg', 'https://www.jean-georges.com/content/slides/jgm-rasberry-basil-cocktail-1600x10002.jpg']
 cocktail.remote_photo_url = urls.sample
 cocktail.save
 puts "created cocktail"
end

