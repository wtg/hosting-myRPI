class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def whm_api
    server = Lumberg::Whm::Server.new(
        host: ENV['WHM_HOST'],
        hash: ENV['WHM_KEY']
    )
  end
  
end
