class AddFinalToResults < ActiveRecord::Migration
  def self.up
		add_column :results, :final, :integer, :default => 0
  end

  def self.down
	  remove_column :results, :final
  
  end
end
