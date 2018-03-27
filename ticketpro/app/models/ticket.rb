class Ticket < ApplicationRecord
  belongs_to :event
  has_many :ticket_users
  has_many :users, through: :ticket_users
end
