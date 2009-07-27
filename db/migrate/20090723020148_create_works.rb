class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.string :url
      t.string :submitter
			t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
