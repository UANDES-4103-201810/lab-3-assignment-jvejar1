class User < ApplicationRecord
  has_many :ticket_users
  has_many :tickets, through: :ticket_users

  def most_expensive_ticket_bought
    return self.tickets.max_by(&:price).price
  end

  def most_expensive_ticket_bought_between(start_date,end_date)

    return self.tickets.where(:date_bought=>start_date..end_date).max_by(&:price)

  end

  def last_event
    return self.ticket_users.max_by(&:date_bought).event
  end
end


