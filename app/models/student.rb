class Student < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :project
  attr_accessible :name	
  has_one :profile
end
