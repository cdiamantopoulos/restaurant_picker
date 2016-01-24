class Restaurant < ActiveRecord::Base

  ##
  ## Database Relationships 
  ##


  ##
  ## Validations
  ##
  validates :name, uniqueness: true, presence: true
  validates_presence_of :price, :style
  
end
