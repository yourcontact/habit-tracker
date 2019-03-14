class Habit < ApplicationRecord
  has_many :users, through: :user_habits
  has_many :user_habits
  belongs_to :user
  enum status: [ :undone, :done]
  #before_save :remove_blanks

  #validates :days, inclusion: { in: %w(Mon Tue Wed Thu Fri Sat Sun)}

  validates :name, presence: true
  # validates :user_id, presence: true
  # validates :unit_id, presence: true
  # validates :repeat
  # validates :days
  # validates :reminder, presence: true
  # validates :status, default: 0

  after_create :set_reminder

  #def remove_blanks
  # self.days.reject!(&:blank?).to_s
  #end

  private

  def set_reminder
    return if reminder.nil? || reminder < Time.now

    TwilioRelayJob.set(wait_until: reminder).perform_later(self)
  end
end
