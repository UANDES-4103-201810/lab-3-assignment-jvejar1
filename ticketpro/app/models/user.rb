class User < ApplicationRecord
  has_many :ticket_users
  has_many :tickets, through: :ticket_users

  def most_expensive_ticket_bought
    return self.tickets.max_by(&:price)
  end

  def most_expensive_ticket_bought_between
    
  end
end


