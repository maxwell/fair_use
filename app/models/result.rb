class Result < ActiveRecord::Base
	belongs_to :work
	validates_presence_of :q1, :q2, :q3, :q4, :q5, :q6
end
