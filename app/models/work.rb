class Work < ActiveRecord::Base
	validates_presence_of :url, :name, :submitter
	has_many :results
	validates_format_of :url, :with =>
		/^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix,
		:message => "is invalid. (URL must contain http://)"
	before_save :fetch_video
	
	has_many :results do
		def all
			find :all, :order => 'id DESC'
		end
	end
	
	def to_param 
 			"#{id}-#{name.gsub(/\W/, '-').downcase}" 
 	end 
 	
 	protected
 	
  # for this method, i need a better way to check if this is a video b4 doin this
 	  def fetch_video
   	    @video=UnvlogIt.new(url)
   	    self.embed_url=@video.embed_html(300, 169)
   	    self.thumb_url=@video.thumbnail
    end
end
