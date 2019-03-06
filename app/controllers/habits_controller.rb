class HabitsController < ApplicationController

  def index
    @habit = Habits.all
  end

end
