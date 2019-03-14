class TwilioRelayJob < ApplicationJob
  queue_as :default

  def perform(habit)
    client = Twilio::REST::Client.new

    client.messages.create({
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: "whatsapp:#{habit.user.whatsapp}",
      body: "Here is a reminder for you to #{habit.name}"
    })
  end
end
