class HabitMailer < ApplicationMailer
  def welcome(user)
    @user = user

    mail to: @user.email, subject: "You created a new habit"

  end
end
