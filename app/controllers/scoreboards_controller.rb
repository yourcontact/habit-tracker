class ScoreboardsController < ApplicationController
  before_action :my_followers, only: [:index]
  def index

    @users = User.all
    raise
  end
#

private

def my_followers
   @user = current_user
   @followers = @user.following_relationships

end
# a method for a user to see all his followers should be a where
end
