class HabitsController < ApplicationController

  def index
    @habits = Habit.where(user: current_user)
  end

  def show
    @habit = Habit.find(params[:id])
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    @habit.user = current_user
    if @habit.save
      redirect_to habits_path
    else
      render :new
    end
  end

  def edit
    @habit = Habit.find(params[:id])
  end

  def update
    @habit = Habit.find(params[:id])
    if @habit.update(habit_params)
      redirect_to habits_path
    else
      render :edit
    end
  end

  def done
    @habit = Habit.find(params[:id])
    @habit.done!
    current_user.score += 1
    current_user.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy
    redirect_to habits_path
  end

  private

  def habit_params
    params.require(:habit).permit(:name, :reminder)
  end
end
