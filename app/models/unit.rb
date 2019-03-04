class Unit < ApplicationRecord
  belongs_to :habits
  validates :name, presence: true
end
