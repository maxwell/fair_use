class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.integer :q5
      t.integer :q6
      t.integer :count, :default => 0
			t.integer :work_id

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
