class TwilioRelayJob < ApplicationJob
  queue_as :default

  def perform(habit)
    client = Twilio::REST::Client.new

    client.messages.create({
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: "whatsapp:#{habit.user.whatsapp}",
      body: "Hey #{habit.user.username}, stop procrastinating! Here is a reminder to #{habit.name}. Do it NOW."
    })
  end
end

