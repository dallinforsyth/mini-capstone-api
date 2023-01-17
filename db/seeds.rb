# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new(name: "Pencil", price: 3, img_url: "https://www.freeiconspng.com/thumbs/pencil-png/pencil-png-file-by-ama-chii-on-deviantart-14.png", description: "New #2 pencil that can write up to 20 pages!")
product.save!

product = Product.new(name: "Eraser", price: 5, img_url: "https://purepng.com/public/uploads/large/purepng.com-erasereraserstationeryremovingwritingrubberyshapescolourspencil-eraser-1421526504923jaacw.png", description: "Beautiful pink eraser to erase all your mistakes!")
product.save!

