class Result < ActiveRecord::Base
	belongs_to :work, :counter_cache => true
	validates_presence_of :q1, :q2, :q3, :q4, :q5, :q6, :q7
	before_save :compute
	after_create :update_stats
	
	protected
	
	def compute 
		final = q1 + q2 + q3 + q4 + q5 + q6 + q7
		if final ==0
			final =final + q7
		end 
		self.final=final

	end
	
	def update_stats
    # self.video.avg_rate = self.video.surveys.average(:rate)
	  if final > 0
		  self.work.positive_count += 1 
		end
		
		if q1 > 0
		  self.work.q1 += 1 
		end
		if q2 > 0
		  self.work.q2 += 1 
		end
		if q3 > 0
		  self.work.q3 += 1 
		end
		if q4 > 0
		  self.work.q4 += 1 
		end
		if q5 > 0
		  self.work.q5 += 1 
		end
		if q6 > 0
		  self.work.q6 += 1 
		end
		if q7 > 0
		  self.work.q7 += 1 
		end
		work.save
	end
	
end
