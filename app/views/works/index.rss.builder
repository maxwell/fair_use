xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
      xml.title "Recent Works Submitted to the berkman center fair use tool"
      xml.description"from the berkman fair use tool"
      xml.link works_url(:format => :rss)
			
			for work in @works
				xml.item do
					xml.title work.name
					xml.description "item submitted: "+ work.url
					xml.description "Submitted by: " + work.submitter
					xml.pubDate work.created_at.to_s(:rfc822)
         
			end
    end
   end
 end