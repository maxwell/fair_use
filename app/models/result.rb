class Result < ActiveRecord::Base
	belongs_to :work, :counter_cache => true
	validates_presence_of :q1, :q2, :q3, :q4, :q5, :q6
	before_save :compute
	
	protected
	def compute 
		final = q1 + q2 + q3 + q4 + q5 + q6
			puts final
		if final ==0
			final =final + q6
		end 
		self.final=final
	end
end
