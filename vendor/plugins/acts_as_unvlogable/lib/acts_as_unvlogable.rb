# Included gems
require 'youtube_g'
require 'acts_as_unvlogable/flickr'
# Extensions
if defined?(ActiveSupport).nil?
  require 'acts_as_unvlogable/string_base'
  require 'acts_as_unvlogable/object_base'
end
require 'acts_as_unvlogable/string_extend'

RAILS_ROOT='.' if !defined? RAILS_ROOT
# Video classes
videolibs = File.join(RAILS_ROOT, "**", "acts_as_unvlogable", "vg_*.rb")
Dir.glob(videolibs).each {|file| require file}

class UnvlogIt
  
  #this function has been stripped of throwing errors, so it just wont work
  #there prob is a more gracefull way to do this idk - maxwell
  def initialize(url=nil, options={})
    raise ArgumentError.new("We need a video url") if url.blank?
    @object ||= "vg_#{get_domain(url).downcase}".camelize.constantize.new(url, options) rescue nil
                return if @object.nil?
                unless @object.instance_variable_get("@details").nil? || 
                  !@object.instance_variable_get("@details").respond_to?("noembed")
                   return if @object.instance_variable_get("@details").noembed
                end
  end
  
  def title
    @object.title rescue nil
  end
  
  def thumbnail
    @object.thumbnail rescue nil
  end
  
  def embed_url
    @object.embed_url rescue nil
  end

  def embed_html(width=425, height=344, options={})
    @object.embed_html(width, height, options) rescue nil
  end
  
  def flv
    @object.flv rescue nil
  end
  
  def video_details(width=425, height=344)
    {
      :title => @object.title,
      :thumbnail => @object.thumbnail,
      :embed_url => @object.embed_url,
      :embed_html => @object.embed_html(width, height),
      :flv => @object.flv
    }
  end
  
  def get_domain(url)
    host = URI::parse(url).host.split(".")
    unless host.size == 1
      host[host.size-2]
    else
      host[0]
    end
  end
  
end