class Habit < ApplicationRecord
  belongs_to :user
  has_many :units
  validates :name, presence: true
  validates :user_id, presence: true
  validates :unit_id, presence: true
  validates :repeat, default: 0
  validates :days, default: 0
  validates :reminder, presence: true
  validates :status, default: 0
end
