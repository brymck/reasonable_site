class Report < ActiveRecord::Base
  attr_accessible
  belongs_to :troll
end
