class ApplicationController < ActionController::Base
  helper :all
  
  include HoptoadNotifier::Catcher
  
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'a8fa4af9d89b0ea6ab47a77cdcbf6e45'
  
end
