class Project < ActiveRecord::Base
  attr_accessible :abstract, :budget, :description, :title, :status
  has_many :students
  validates :title, :presence => true
  validates_numericality_of :budget, on: :create
  scope :ongoing, where(status: 'ongoing')
  scope :completed, where(status: 'completed')
  scope :expensive, where('budget > ?',100)
end
