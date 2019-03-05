class UserScoreBoard < ApplicationRecord
  has_many :score_boards
  has_many :users
  belongs_to :score_boards
  belongs_to :users
end
