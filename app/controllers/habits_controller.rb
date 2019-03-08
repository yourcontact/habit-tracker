class HabitsController < ApplicationController

  def index
    @habits = Habit.all
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

  private

  def habit_params
    params.require(:habit).permit(:name, :daily, :repeat, :reminder, :unit_id, :count, :days => [])
  end
end
