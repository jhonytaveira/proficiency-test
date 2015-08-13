class ApplicationController < ActionController::Base
  inherit_resources

  protect_from_forgery with: :exception
end
