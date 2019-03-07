puts "destoying all seeds..."

Habit.destroy_all
User.destroy_all
Unit.destroy_all
Follow.destroy_all

#create 10 users
user = User.new(username: "rrrrui", email: "braguaboy@gmail.com", password: "123456", score: "234")
user.save

user = User.new(username: "kevinfromamerica", email: "kevinfromamerica@gmail.com", password: "123456", score: "23")
user.save

user = User.new(username: "antonio", email: "joao@gmail.com", password: "123456", score: "235")
user.save

user = User.new(username: "footinvest", email: "manu@gmail.com", password: "123456", score: "12")
user.save

user = User.new(username: "Porto4ever", email: "beneficasucks@gmail.com", password: "123456", score: "321")
user.save

user = User.new(username: "andre", email: "andre@gmail.com", password: "123456", score: "153")
user.save

user = User.new(username: "patrick", email: "patrick@gmail.com", password: "123456", score: "76")
user.save

user = User.new(username: "ricardobrazil", email: "ricardobrazil@gmail.com", password: "123456", score: "89")
user.save

user = User.new(username: "anonymous", email: "anonymous@gmail.com", password: "123456", score: "3")
user.save

user = User.new(username: "michel", email: "michel@gmail.com", password: "123456", score: "32")
user.save

user = User.new(username: "pedro", email: "pedro@gmail.com", password: "123456", score: "133")
user.save

user = User.new(username: "michael", email: "michael@gmail.com", password: "123456", score: "145")
user.save

user = User.new(username: "yesman", email: "yesman@gmail.com", password: "123456", score: "98")
user.save

puts User.all

#create minute and L units
unit = Unit.new(name: 'minute', weight: 1)
unit.save

unit = Unit.new(name: 'L', weight: 1)
unit.save

puts Unit.all

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
puts habit

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

puts User.all[0].following_relationships






