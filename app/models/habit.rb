class Habit < ApplicationRecord
  has_many :users, through: :user_habits
  belongs_to :unit
  #validates :name, presence: true
  #validates :user_id, presence: true
  #validates :unit_id, presence: true
  #validates :repeat, default: 0
  #validates :days, default: 0
  #validates :reminder, presence: true
  #validates :status, default: 0
end
