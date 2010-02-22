class AddBreakdownCounter < ActiveRecord::Migration
  def self.up
    add_column :works, :positive_count, :integer, :default => 0
  end

  def self.down
    remove_column :works, :positive_count
  end
end
