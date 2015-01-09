class Profile < ActiveRecord::Base
  belongs_to :student
  attr_accessible :email, :student
end
