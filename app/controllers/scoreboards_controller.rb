class ScoreboardsController < ApplicationController
  # before_action :scoreboard, only: [:index]
  def index
    @users = current_user.following.order(score: :desc)
  end
end


