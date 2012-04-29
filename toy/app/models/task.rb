class Task < ActiveRecord::Base
  belongs_to :category
  
  scope :done, where(:done => true).order("due_date")
  scope :undone, where(:done => false).order("due_date desc")
  scope :search, lambda { |query|
    where(["name LIKE ?", "%#{query}%"])
  }
  
  validates :name, :presence => true, :length => { :maximum => 20 } 
  validates :description, :presence => true, :length => { :maximum => 200 }
end
