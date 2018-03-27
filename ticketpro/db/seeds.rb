# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

User.create([
                {
                    name:'Juanito',
                    last_name: 'Vejar',
                    email: 'jvejar@miuandes.cl',
                    phone: '+5699282838',
                    password: 'memes123',
                    address: 'Ricardo Flores 2209'
                },
                {
                    name:'Monty',
                    last_name: 'Carril',
                    email: 'iacarril@miuandes.cl',
                    phone: '+5699282830',
                    password: 'memes124',
                    address: 'Lo Beltran 2207'
                },
                {
                    name:'Seba',
                    last_name: 'Baixas',
                    email: 'sbaxor@miuandes.cl',
                    phone: '+56992828229',
                    password: 'memes134',
                    address: 'Espoz 9928'
                },
                {
                    name:'Diego',
                    last_name: 'Beckdorf',
                    email: 'dbeck@miuandes.cl',
                    phone: '+5692828729',
                    password: 'memes135',
                    address: 'Vitacura 2910'
                },
                {
                    name:'Benja',
                    last_name: 'Perez',
                    email: 'bperez@miuandes.cl',
                    phone: '+56992828559',
                    password: 'noodles9',
                    address: 'Las Flores 2910'
                }

            ]
)
Place.create([
                 {
                    name: 'Estadio Nacional',
                    address: 'Calle 1 9019',
                    capacity: 10000
              },
              {
                  name: 'Estadio Monumental',
                  address: 'Calle Juan Ramirez 9019',
                  capacity: 8000
              },
                 {
                     name: 'Arena Santiago',
                     address: 'Calle 2 9019',
                     capacity: 9000
                 },
             ]
)

Event.create([{description:'Arjona', start_date: DateTime.new(2001,2,3.5), place_id: 1},
             {description:'Maluma', start_date: DateTime.new(2002,2,3.5), place_id: 2},
              {description:'Ice JJ Fish', start_date: DateTime.new(2000,1,3.5), place_id: 2}
             ])


types = ['palco','vip','cancha']
events = Event.all
prices = [1000,2000,3000]
descriptions = ['solo','un','ejemplo']

events.each do |event|
  for time in 0..2

    Ticket.create(type_of_ticket:types[time], price:prices[time], description:descriptions[time],event:event)
  end

end

users =User.all()

users.each do |user|

  events.each do |event|

    event_tickets = event.tickets
    user_ticket =  event_tickets.sample()
    TicketUser.create(user:user,date_bought:DateTime.now,paid:true, ticket:user_ticket)
  end

end