class AddResultsCounterToWorks < ActiveRecord::Migration
  def self.up
    add_column :works, :q1, :integer, :default => 0
    add_column :works, :q2, :integer, :default => 0 
    add_column :works, :q3, :integer, :default => 0 
    add_column :works, :q4, :integer, :default => 0 
    add_column :works, :q5, :integer, :default => 0 
    add_column :works, :q6, :integer, :default => 0 
    add_column :works, :q7, :integer, :default => 0 
  end                   

  def self.down
   remove_column :works, :q1
   remove_column :works, :q2
   remove_column :works, :q3
   remove_column :works, :q4
   remove_column :works, :q5
   remove_column :works, :q6
   remove_column :works, :q6
   remove_column :works, :q7
  end
end
