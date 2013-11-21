class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :problem, :limit => 200
      t.string :compaintant_name
      t.string :email
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
