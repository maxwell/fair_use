ActionController::Routing::Routes.draw do |map|
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
	map.resources :user_sessions
  map.resources :users
	map.root :controller => "works"
	map.resources :works, :has_many =>:results
	
	map.with_options :controller =>"static" do |static|
		static.about 'about', :action =>'about'
		static.directions 'directions', :action =>'directions'
		static.help 'help', :action =>'help'
	end	
	
	map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
