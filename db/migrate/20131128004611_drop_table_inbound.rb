class DropTableInbound < ActiveRecord::Migration
  def up
    rename_column :tickets, :response, :reply
    change_column :tickets, :reply, :text, default: ""
    drop_table :inbounds
  end

  def down
    rename_column :tickets, :reply, :response
    create_table :inbounds do |t|
      t.string   "body"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
