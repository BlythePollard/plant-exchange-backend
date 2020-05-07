#to seed: 1 user, 3 plants that belong to user, 1 cart that belongs to user

User.destroy_all
Plant.destroy_all

user = User.create(username: 'Blythe', email: 'blythe@gmail.com')

plant1 = Plant.create(name:"lilac", description:"young lilac bush", available:true, user_id:1)
plant2 = Plant.create(name:"cottonwood tree", description:"10 ft. tall, healthy", available:true, user_id:1)
plant3 = Plant.create(name:"indoor fern", description:"about 10 inches tall, comes with pot", available:true, user_id:1)

user.plants << plant1
user.plants << plant2
user.plants << plant3