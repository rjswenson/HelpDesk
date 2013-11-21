class Ticket < ActiveRecord::Base
  validates :email, presence: true
  validates :complainant_name, presence: true
  validates :problem, presence: true
end
