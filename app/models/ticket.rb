class Ticket < ActiveRecord::Base
  has_many :tasks
  validates :ticket_number, presence: true
  accepts_nested_attributes_for :tasks, :reject_if => proc { |a| a[:description].blank? }, allow_destroy: true
end
