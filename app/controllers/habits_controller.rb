class HabitsController < ApplicationController

  def index
    @habit = Habits.all
  end

  def show
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

  private
end
