class HabitMailer < ApplicationMailer
  def welcome(user)
    @user = user

    mail to: "joaofran@outlook.pt", subject: "You created a new habit"

  end
end
