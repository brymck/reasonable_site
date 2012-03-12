class Troll < ActiveRecord::Base
  attr_accessible :text, :regex, :category_id
  belongs_to :category
end
