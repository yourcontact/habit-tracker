class HabitsController < ApplicationController

  def index
    @habits = Habits.all
  end

  def show
    @habit = Habit.find(params[:id])
  end

  private

  def habit_params
    params.require(:habit).permit(:name, :repeat, :days, :reminder)
  end

end
