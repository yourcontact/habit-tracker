class ScoreboardsController < ApplicationController
  before_action :my_followers, only: [:index]
  def index
  end

  private

  def my_followers
    @users = User.all
    @user = current_user
    @follows = @user.following_relationships.map { |following_relationship| @users.find(following_relationship.following_id) }
  end
end

