class UserScoreBoard < ApplicationRecord
  has_many :UserScoreBoards
  has_many :users
  belongs_to :ScoreBoards
end
