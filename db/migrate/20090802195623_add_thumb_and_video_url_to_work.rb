class AddThumbAndVideoUrlToWork < ActiveRecord::Migration
  def self.up
    add_column :works, :embed_url, :string
    add_column :works, :thumb_url, :string
    
    Work.find(:all).each do |s|
        @video=UnvlogIt.new(s.url)
				s.update_attribute :embed_url, @video.embed_html(300, 170)
        s.update_attribute :thumb_url, @video.thumbnail
    end
  end

  def self.down
    remove_column :works, :embed_url
    remove_column :works, :thumb_url
  end
end
