class Work < ActiveRecord::Base
	validates_presence_of :url, :name, :submitter
	has_many :results
	
	has_many :results do
		def all
			find :all, :order => 'id DESC'
		end
	end
	def to_param 
 			"#{id}-#{name.gsub(/\W/, '-').downcase}" 
 	end 
 
end
