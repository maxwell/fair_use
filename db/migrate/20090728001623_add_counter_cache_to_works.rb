class AddCounterCacheToWorks < ActiveRecord::Migration
  def self.up
    add_column :works, :results_count, :integer, :default => 0
		Work.find(:all).each do |s|
				s.update_attribute :results_count, s.results.length
		end
  end

  def self.down
    remove_column :works, :results_counter
  end
end
