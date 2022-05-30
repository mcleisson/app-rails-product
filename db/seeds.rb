# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tags = Tag.create([{name: 'tag1'}, {name: 'tag2'}, {name: 'tag3'}, {name: 'tag4'}])

categories = Category.create([{name: 'categoria1', description: 'categoria1'}, {name: 'categoria2', description: 'categoria2'}, {name: 'categoria3', description: 'categoria3'},
     {name: 'categoria4', description: 'categoria4'}, {name: 'categoria5', description: 'categoria5'}])
