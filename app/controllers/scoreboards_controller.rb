class ScoreboardsController < ApplicationController
  before_action :my_followers, only: [:index]
  def index
  end

  private

  def find_user_by_id(user_id)
    @users.find(user_id)
  end

  def my_followers
    @users = User.all
    @user = current_user
    @follows = @user.following_relationships.map { |following_relationship| find_user_by_id(following_relationship.following_id) }
    @scores = scores(@follows)
    @scores << @user.score
    @sort_scores = sort_scores(@scores)
  end

  # build an array of scores
  def scores(follows)
    follows.map { |follow| follow.score }
  end

  # sort the array of scores
  def sort_scores(scores)
    scores.sort_by { |score| -score }
  end
end



