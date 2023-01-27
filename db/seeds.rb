supplier1 = Supplier.create!({ name: "Oakley", email: "oakley@test.com", phone_number: "9876543215" })

supplier2 = Supplier.create!({ name: "Red Bull", email: "givesyouwings@test.com", phone_number: "5287419635" })

supplier3 = Supplier.create!({ name: "Burton", email: "snowguys@test.com", phone_number: "8521463779" })

product = Product.create!({ name: "Big Pen", price: "5.0", description: "pen with a whole lot pen o pen", inventory: "8.0", supplier_id: supplier2.id })

product = Product.create!({ name: "Storng Rock", price: "45.0", description: "best purchus you will ever make a big ol papper weight", inventory: "4.0", supplier_id: supplier2.id })
Picture.create!(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Logan_Rock_Treen_closeup.jpg/1200px-Logan_Rock_Treen_closeup.jpg", product_id: product.id)

product = Product.create!({ name: "wood Pencil", price: "15.0", description: "New number 2 pencil that can write up to 20 pages!", inventory: "9.0", supplier_id: supplier2.id })
Picture.create!(url: "https://www.freeiconspng.com/thumbs/pencil-png/pencil-png-file-by-ama-chii-on-deviantart-14.png", product_id: product.id)
Picture.create!(url: "https://www.freeiconspng.com/thumbs/pencil-png/pencil-png-file-by-ama-chii-on-deviantart-14.png", product_id: product.id)

product = Product.create!({ name: "Beans", price: "2.0", description: "your favourte refiryed beans are back can o beans", inventory: "5.0", supplier_id: supplier2.id })

product = Product.create!({ name: "yoda bag", price: "13.0", description: "best single strap bag that you could bag o bag", inventory: "5.0", supplier_id: supplier2.id })
