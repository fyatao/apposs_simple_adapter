class ApplicationController < ActionController::Base
  include AppossSimpleAdapter::Auth
  protect_from_forgery
  helper_method :current_user
end
