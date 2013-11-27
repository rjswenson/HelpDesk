class CreateInbounds < ActiveRecord::Migration
  def change
    create_table :inbounds do |t|
      t.string :body
      t.timestamps
    end
  end
end
