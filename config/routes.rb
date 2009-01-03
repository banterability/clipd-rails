ActionController::Routing::Routes.draw do |map|
    
    map.root :controller => "clips"  
    
    map.connect 'clips/create', :controller => 'clips', :action => 'create'
    
    map.resources :clips

    map.connect ':controller/:action/:id'
    map.connect ':controller/:action/:id.:format'

end
