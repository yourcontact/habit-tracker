class TwilioRelayJob < ApplicationJob
  queue_as :default

  def perform(habit)
    client = Twilio::REST::Client.new

    client.messages.create({
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: "whatsapp:#{habit.user.whatsapp}",
      body: "YO #{habit.user.username}. Get #{habit.name} done."
    })
  end
end

