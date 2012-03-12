class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?

  private

  def admin?
    !!session[:admin]
  end
end
