class CategoriesController < ApplicationController
  def index
    @categories = Category.find(:all, :limit => 5)
  end
end
