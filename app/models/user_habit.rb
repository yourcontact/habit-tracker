class UserHabit < ApplicationRecord
  has_many :habits
  has_many :users
  belongs_to :habit
  belongs_to :user
end
