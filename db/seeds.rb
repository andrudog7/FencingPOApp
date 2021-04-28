# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.create([{name: "PVC Sections"}, {name: "PVC Posts"}, {name: "Caps"}, {name: "Gates (walk)"}, {name: "Gates (double)"}, {name: "Insert"}, {name: "Concrete"}])
Salesman.create([{name: "Allen Smoker"}, {name: "Andrew Smoker"}, {name: "Wesley Lapp"}])
Item.create([
    {type: Type.find_by(:name => "PVC Sections"), color: "White", description: "4' tall x 8' wide Deco Sections"},
    {type: Type.find_by(:name => "PVC Sections"), color: "White", description: "4' tall x 6' wide Deco Sections"},
    {type: Type.find_by(:name => "PVC Sections"), color: "White", description: "6' tall x 8' wide Deco Sections"},
    {type: Type.find_by(:name => "PVC Sections"), color: "White", description: "6' tall x 6' wide Deco Sections"},
    {type: Type.find_by(:name => "PVC Sections"), color: "Tan", description: "4' tall x 8' wide Deco Sections"},
    {type: Type.find_by(:name => "PVC Sections"), color: "Tan", description: "4' tall x 6' wide Deco Sections"},
    {type: Type.find_by(:name => "PVC Sections"), color: "Tan", description: "6' tall x 8' wide Deco Sections"},
    {type: Type.find_by(:name => "PVC Sections"), color: "Tan", description: "6' tall x 6' wide Deco Sections"}
])
Item.create([
    {type: Type.find_by(:name => "PVC Posts"), color: "White", description: "end posts, 5\" x .150 x 108\""},
    {type: Type.find_by(:name => "PVC Posts"), color: "White", description: "line posts, 5\" x .150 x 108\""},
    {type: Type.find_by(:name => "PVC Posts"), color: "White", description: "blank posts, 5\" x .150 x 108\""},
    {type: Type.find_by(:name => "PVC Posts"), color: "Tan", description: "blank posts, 5\" x .150 x 108\""},
    {type: Type.find_by(:name => "PVC Posts"), color: "Tan", description: "end posts, 5\" x .150 x 108\""},
    {type: Type.find_by(:name => "PVC Posts"), color: "Tan", description: "line posts, 5\" x .150 x 108\""}
])