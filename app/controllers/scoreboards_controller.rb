class ScoreboardsController < ApplicationController
  before_action :scoreboard, only: [:index]
  def index
  end

  private

  def scoreboard
    @users = User.all
    @user = current_user
    following_id = follows(@user)
    following = find_user_by_id(following_id)
    scores = scores(following)
    scores << @user.score
    @sort_scores = sort_scores(scores)
  end

  # find out who follow
  def follows(user)
    user.following_relationships.map(&:following_id)
  end

  # find user by id
  def find_user_by_id(user_id)
    @users.find(user_id)
  end

  # build an array of scores
  def scores(follows)
    follows.map(&:score)
  end

  # sort the array of scores
  def sort_scores(scores)
    scores.sort.reverse
  end
end



