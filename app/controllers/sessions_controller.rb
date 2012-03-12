class SessionsController < ApplicationController
  def new
    if params[:password]
      if Digest::MD5.hexdigest("#{ENV["SALT"]}#{params[:password]}") == ENV["REASONABLE_PASS"]
        session.merge! :admin => true
        redirect_to root_path, :notice => "Logged in"
      end
    end
  end

  def destroy
    session.merge! :admin => false
    redirect_to root_path, :notice => "Logged out"
  end
end
