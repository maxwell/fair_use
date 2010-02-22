# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def title(page_title)
	  content_for(:title) { page_title }
	end
	
	def javascript(*args)
    args = args.map { |arg| arg == :defaults ? arg : arg.to_s }
    content_for(:head) { javascript_include_tag(*args) }
  end
  
end
