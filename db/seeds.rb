puts "reset all seeds..."

Habit.destroy_all
User.destroy_all
Unit.destroy_all
Follow.destroy_all

#create 10 users

user = User.new(username: "kevinfromamerica", email: "kevinfromamerica@gmail.com", password: "123456", score: "23")
user.remote_photo_url = 'https://avatars2.githubusercontent.com/u/46444582?v=4'
user.save

user = User.new(username: "Porto4ever", email: "beneficasucks@gmail.com", password: "123456", score: "321")
user.remote_photo_url = 'https://avatars0.githubusercontent.com/u/45975135?v=4'
user.save

user = User.new(username: "miguelin", email: "miguel@gmail.com", password: "123456", score: "153")
user.remote_photo_url = 'https://avatars3.githubusercontent.com/u/31628490?v=4'
user.save

user = User.new(username: "businessman", email: "paulo@gmail.com", password: "123456", score: "98")
user.remote_photo_url = 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/vnlkdtuj6n4g5osvdjzp.jpg'
user.save




#create minute and L units
unit = Unit.new(name: 'Minutes', weight: 1)
unit.save

unit = Unit.new(name: 'Milliliters', weight: 1)
unit.save

unit = Unit.new(name: 'Kilometers', weight: 1)
unit.save

unit = Unit.new(name: 'Times', weight: 1)
unit.save

#create 5 habits, 3 habits for the first user User.all[0]
habit = Habit.new(name: 'code', reminder: 1)
habit.user_id = User.all[0].id
habit.unit_id = Unit.all[0].id
habit.save

habit = Habit.new(name: 'drink SUPER BOCA', reminder: 1)
habit.user_id = User.all[0].id
habit.unit_id = Unit.all[1].id
habit.save

habit = Habit.new(name: 'get ready for code and SUPER BOCA again', reminder: 1)
habit.user_id = User.all[0].id
habit.unit_id = Unit.all[0].id
habit.save

# habit = Habit.new(name: 'surf', repeat: 1, days: 1, reminder: 1)
# habit.user_id = User.all[1].id
# habit.unit_id = Unit.all[0].id
# habit.save

# habit = Habit.new(name: 'generate 1,000 seeds per day', repeat: 1, days: 1, reminder: 1)
# habit.user_id = User.all[3].id
# habit.unit_id = Unit.all[0].id
# habit.save

#looks like Rails c could not print the 2 above in one go. Sometime the terminal bugs.

#create some followers for our first user created User.all[0]
User.all[0].follow(User.all[1].id)
User.all[0].follow(User.all[2].id)
User.all[0].follow(User.all[3].id)
User.all[0].follow(User.all[4].id)
User.all[0].follow(User.all[5].id)
User.all[0].follow(User.all[6].id)
User.all[0].follow(User.all[7].id)
User.all[0].follow(User.all[8].id)
User.all[0].follow(User.all[9].id)
User.all[0].follow(User.all[10].id)





