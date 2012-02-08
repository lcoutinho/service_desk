class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :ticket_number
      t.string :title

      t.timestamps
    end
    add_index :tickets, :ticket_number, :unique => true
  end
end
