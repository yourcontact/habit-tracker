class HabitMailerPreview <ActionMailer::Preview
  def welcome
    user = User.first
    HabitMailer.welcome(user)
  end
end
