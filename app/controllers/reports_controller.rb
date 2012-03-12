class ReportsController < ApplicationController
  def index
    @reports = Report.find(:all)
  end

  def create
    hashed_identifier = Digest::MD5.hexdigest("#{ENV['SALT']}#{request.remote_ip}")
    user = User.find_or_create_by_identifier(hashed_identifier) { |u| u.credibility = 5 }
  end
end
