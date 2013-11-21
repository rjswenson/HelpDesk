class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :tickets, :compaintant_name, :complainant_name
  end

  def self.down
    rename_column :tickets, :complainant_name, :compaintant_name
  end
end
