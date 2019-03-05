class ScoreBoard < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :user_score_board
  has_many :users, through: :user_score_board
end
