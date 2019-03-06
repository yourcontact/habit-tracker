puts "destoying all seeds..."

Habit.destroy_all
User.destroy_all
Unit.destroy_all


#create 10 users
user = User.new(username: "joao", email: "joao@gmail.com", password: "123456")
user.save

user = User.new(username: "kevinfromamerica", email: "kevinfromamerica@gmail.com", password: "123456")
user.save

user = User.new(username: "antonio", email: "joao@gmail.com", password: "123456")
user.save

user = User.new(username: "footinvest", email: "manu@gmail.com", password: "123456")
user.save

user = User.new(username: "braguaboy", email: "braguaboy@gmail.com", password: "123456")
user.save

user = User.new(username: "andre", email: "andre@gmail.com", password: "123456")
user.save

user = User.new(username: "patrick", email: "patrick@gmail.com", password: "123456")
user.save

user = User.new(username: "ricardobrazil", email: "ricardobrazil@gmail.com", password: "123456")
user.save

user = User.new(username: "anonymous", email: "anonymous@gmail.com", password: "123456")
user.save

user = User.new(username: "michel", email: "michel@gmail.com", password: "123456")
user.save

user = User.new(username: "pedro", email: "pedro@gmail.com", password: "123456")
user.save

user = User.new(username: "michael", email: "michael@gmail.com", password: "123456")
user.save

user = User.new(username: "yesman", email: "yesman@gmail.com", password: "123456")
user.save

puts User.all

#create minutes and L units
unit = Unit.new(name: 'minute', weight: 1)
unit.save

unit = Unit.new(name: 'L', weight: 1)
unit.save

puts Unit.all

#create 5 habits, 3 habits for the same user User.all[0]
habit = Habit.new(name: 'code', repeat: 1, days: 1, reminder: 1)
habit.user_id = User.all[0].id
habit.unit_id = Unit.all[0].id
habit.save

habit = Habit.new(name: 'drink SUPER BOCA', repeat: 1, days: 1, reminder: 1)
habit.user_id = User.all[0].id
habit.unit_id = Unit.all[1].id
habit.save

habit = Habit.new(name: 'get ready for code and SUPER BOCA again', repeat: 1, days: 1, reminder: 1)
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

#create some followers for some users (follower)



#make some users follow some other users (following)






