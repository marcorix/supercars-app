puts 'Cleaning db...'

Booking.destroy_all
Car.destroy_all
User.destroy_all
puts 'Creating 10 cars...'


user = User.create(email: "newuser@hotmail.com", password: "plsletmein")

# Car.create(model: "Jaguar E-Type", color: "Red", image_url: "https://www.instant-quote.co/images/cars/large/o_1c80gnqmfrl51tc811c06ce11sh1h.jpg", year: 1962, price: 200, user: user)
# Car.create(model: "Audi 100 Coupé S", color: "Blue", image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c2/Audi_100_Coupe_BW_1.JPG", year: 1969, price: 180, user: user)
# Car.create(model: "Ferrari 330 GT 2+2", color: "Blue", image_url: "https://cdn.classic-trader.com/I/images/1920_1920_inset/vehicle_ad_standard_image_ddac7bef77c910a143c3d56d5976c68c.jpg", year: 1966, price: 366, user: user)
# Car.create(model: "Porsche 964 Turbo", color: "White", image_url: "https://www.classicdriver.com/sites/default/files/styles/colorbox/public/article_images/03_34.jpg", year: 1992, price: 210, user: user)
# Car.create(model: "Bentley S2", color: "Grey", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/1961_Bentley_S2_6.2.jpg/2560px-1961_Bentley_S2_6.2.jpg", year: 1961, price: 195, user: user)
# Car.create(model: "Maserati 3500 GT Vignale Spyder", color: "Blue", image_url: "https://www.sportscarmarket.com/wp-content/uploads/2016/12/1961-maserati-3500-gt-vignale-spyder-front.jpg", year: 1961, price: 230, user: user)
# Car.create(model: "Bugatti EB 110", color: "Blue", image_url: "https://tcct.com/wp-content/uploads/2020/05/1993-Bugatti-EB110-GT-Bonhams.jpg", year: 1993, price: 210, user: user)
# Car.create(model: "McLaren F1", color: "Grey", image_url: "https://tcct.com/wp-content/uploads/2020/05/mclaren_f1_144-scaled.jpeg", year: 1997, price: 200, user: user)
# Car.create(model: "Mercedes-Benz 300SL Gullwing Coupe", color: "Black", image_url: "https://cdn.shopify.com/s/files/1/0014/7472/3917/articles/mercedes-benz-gullwing-coupe-auction-0-1_1200x800_crop_center.jpg?v=1533831193", year: 1955, price: 255, user: user)
# Car.create(model: "BMW 507", color: "Blue", image_url: "https://cdn.publish0x.com/prod/fs/images/03a61eb89d5fb217d8bd22de9c306a23fef7cc52c00626c54e0f936db2b8d4cc.jpeg", year: 1956, price: 206, user: user)
# Car.create(model: "Cadillac Coupe Deville", color: "Pink", image_url: "https://car-from-uk.com/ebay/carphotos/full/ebay456846.jpg", year: 1960, price: 160, user: user)

require "open-uri"

file = URI.open("https://www.instant-quote.co/images/cars/large/o_1c80gnqmfrl51tc811c06ce11sh1h.jpg")
car = Car.create(model: "Jaguar E-Type", color: "Red", year: 1962, price: 200, user: user, location: "London, #{Faker::Address.street_address}")
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/c/c2/Audi_100_Coupe_BW_1.JPG")
car = Car.create(model: "Audi 100 Coupé S", color: "Blue", image_url: "", year: 1969, price: 180, user: user, location: "London, #{Faker::Address.street_address}")
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open("https://cdn.classic-trader.com/I/images/1920_1920_inset/vehicle_ad_standard_image_ddac7bef77c910a143c3d56d5976c68c.jpg")
car = Car.create(model: "Ferrari 330 GT 2+2", color: "Blue", image_url: "", year: 1966, price: 366, user: user, location: "Liverpool, #{Faker::Address.street_address}")
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open("https://www.classicdriver.com/sites/default/files/styles/colorbox/public/article_images/03_34.jpg")
car = Car.create(model: "Porsche 964 Turbo", color: "White", image_url: "", year: 1992, price: 210, user: user, location: "London, #{Faker::Address.street_address}")
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/1961_Bentley_S2_6.2.jpg/2560px-1961_Bentley_S2_6.2.jpg")
car = Car.create(model: "Bentley S2", color: "Grey", image_url: "", year: 1961, price: 195, user: user, location: "Bristol, #{Faker::Address.street_address}")
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open("https://www.sportscarmarket.com/wp-content/uploads/2016/12/1961-maserati-3500-gt-vignale-spyder-front.jpg")
car = Car.create(model: "Maserati 3500 GT Vignale Spyder", color: "Blue", image_url: "", year: 1961, price: 230, user: user)
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open("https://cdn.shopify.com/s/files/1/0014/7472/3917/articles/mercedes-benz-gullwing-coupe-auction-0-1_1200x800_crop_center.jpg?v=1533831193")
car = Car.create(model: "Mercedes-Benz 300SL Gullwing Coupe", color: "Black", image_url: "", year: 1955, price: 255, user: user)
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open("https://car-from-uk.com/ebay/carphotos/full/ebay456846.jpg")
car = Car.create(model: "Cadillac Coupe Deville", color: "Pink", image_url: "", year: 1960, price: 160, user: user)
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open("https://cdn.publish0x.com/prod/fs/images/03a61eb89d5fb217d8bd22de9c306a23fef7cc52c00626c54e0f936db2b8d4cc.jpeg")
car = Car.create(model: "BMW 507", color: "Blue", image_url: "", year: 1956, price: 206, user: user)
car.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

puts '...Finished!'
