# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090730031017) do

  create_table "results", :force => true do |t|
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.integer  "q5"
    t.integer  "q6"
    t.integer  "count",      :default => 0
    t.integer  "work_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "final",      :default => 0
  end

  create_table "works", :force => true do |t|
    t.string   "url"
    t.string   "submitter"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "results_count", :default => 0
  end

end
