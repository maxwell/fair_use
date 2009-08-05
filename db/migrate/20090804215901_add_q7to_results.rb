class AddQ7toResults < ActiveRecord::Migration
    def self.up
  		add_column :results, :q7, :integer, :default => 0
    end

    def self.down
  	  remove_column :results, :q7

    end
  end
