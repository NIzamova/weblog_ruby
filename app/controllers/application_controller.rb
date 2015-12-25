class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  #after_filter :after
 # def not_logged_in
  #	@time = 1
#  @text = 'Hello'
#  end
end
