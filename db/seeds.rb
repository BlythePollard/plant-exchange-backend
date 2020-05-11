#to seed: 1 user, 3 plants that belong to user, 1 cart that belongs to user

User.destroy_all
Plant.destroy_all

user1 = User.create(username: 'Blythe', email: 'blythe@gmail.com')
user2 = User.create(username: 'User2', email: 'user2@gmail.com')

plant1 = Plant.create(name:"lilac", description:"young lilac bush", available:true, user_id:1)
plant2 = Plant.create(name:"cottonwood tree", description:"10 ft. tall, healthy", available:true, user_id:1)
plant3 = Plant.create(name:"indoor fern", description:"about 10 inches tall, comes with pot", available:true, user_id:1)

user1.plants << plant1
user1.plants << plant2
user1.plants << plant3