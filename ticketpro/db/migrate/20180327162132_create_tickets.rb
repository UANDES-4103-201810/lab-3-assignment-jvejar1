class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.references :event, foreign_key: true
      t.string :type_of_ticket
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
