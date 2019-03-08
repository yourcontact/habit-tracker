class ScoreboardsController < ApplicationController
  def index
    @users = current_user.following.order(score: :desc)
  end
end


