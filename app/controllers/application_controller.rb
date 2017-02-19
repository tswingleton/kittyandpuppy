class ApplicationController < ActionController::Base

http_basic_authenticate_with :name => "kitty", :password => "puppy" 


end
