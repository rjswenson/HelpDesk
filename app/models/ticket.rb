class Ticket < ActiveRecord::Base
  validates :email, presence: true
  validates :complaintant_name, presence: true
  validates :problem, presence: true
end
