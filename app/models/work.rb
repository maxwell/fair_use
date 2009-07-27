class Work < ActiveRecord::Base
	validates_presence_of :url, :name, :submitter
	has_many :results
	
	def to_param 
 			"#{id}-#{name.gsub(/\W/, '-').downcase}" 
 	end 
 
end
