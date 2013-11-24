class AddResponseToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :response, :string
  end
end
