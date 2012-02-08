class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.belongs_to :ticket

      t.timestamps
    end
    add_index :tasks, :ticket_id
  end
end
