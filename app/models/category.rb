class Category < ActiveRecord::Base
  attr_accessible #none
  has_many :trolls
end
