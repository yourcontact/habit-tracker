class UserScoreBoard < ApplicationRecord
  has_many :user_score_boards
  has_many :users
  belongs_to :score_boards
end
