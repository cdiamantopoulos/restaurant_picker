class Group < ActiveRecord::Base
  
  ## 
  ## Database Relationships
  ## 
  has_many :memberships
  has_many :users, :through => :memberships

  ##
  ## Validations
  ##
  validates_uniqueness_of :name, presence: true
end
