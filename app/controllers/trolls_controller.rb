class TrollsController < ApplicationController
  def index
    @trolls = Troll.find(:all, :limit => 5)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @troll }
    end
  end
end
