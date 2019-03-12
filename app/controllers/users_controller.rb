class UsersController < ApplicationController
  #skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: [:follow, :unfollow]

  def index
    if params[:query].present?
      @users = User.where.not(id: current_user.id).where("username ILIKE ?", "%#{params[:query]}%")
    else
      @users = []
    end
  end

  def follow
    if current_user.follow(@user.id)
    respond_to do |format|
     format.html { redirect_to root_path }
     format.js
    end
   end
  end

  def unfollow
    if current_user.unfollow(@user.id)
    respond_to do |format|
     format.html { redirect_to root_path }
     format.js { render action: :follow }
    end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
