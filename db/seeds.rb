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
    {type: Type.find_by(:name => "PVC Sections"), color: "white", description: "4' tall x 8' wide Deco Sections", rate: 54.00},
    {type: Type.find_by(:name => "PVC Sections"), color: "white", description: "4' tall x 6' wide Deco Sections", rate: 54.00},
    {type: Type.find_by(:name => "PVC Sections"), color: "white", description: "6' tall x 8' wide Deco Sections", rate: 54.00},
    {type: Type.find_by(:name => "PVC Sections"), color: "white", description: "6' tall x 6' wide Deco Sections", rate: 54.00},
    {type: Type.find_by(:name => "PVC Sections"), color: "tan", description: "4' tall x 8' wide Deco Sections", rate: 54.00},
    {type: Type.find_by(:name => "PVC Sections"), color: "tan", description: "4' tall x 6' wide Deco Sections", rate: 54.00},
    {type: Type.find_by(:name => "PVC Sections"), color: "tan", description: "6' tall x 8' wide Deco Sections", rate: 54.00},
    {type: Type.find_by(:name => "PVC Sections"), color: "tan", description: "6' tall x 6' wide Deco Sections", rate: 54.00}
])
Item.create([
    {type: Type.find_by(:name => "PVC Posts"), color: "white", description: "end posts, 5\" x .150 x 108\"", rate: 16.50},
    {type: Type.find_by(:name => "PVC Posts"), color: "white", description: "line posts, 5\" x .150 x 108\"", rate: 16.50},
    {type: Type.find_by(:name => "PVC Posts"), color: "white", description: "blank posts, 5\" x .150 x 108\"", rate: 16.50},
    {type: Type.find_by(:name => "PVC Posts"), color: "tan", description: "blank posts, 5\" x .150 x 108\"", rate: 16.50},
    {type: Type.find_by(:name => "PVC Posts"), color: "tan", description: "end posts, 5\" x .150 x 108\"", rate: 16.50},
    {type: Type.find_by(:name => "PVC Posts"), color: "tan", description: "line posts, 5\" x .150 x 108\"", rate: 16.50},
])