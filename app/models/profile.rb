class Profile < ActiveRecord::Base
  # => Authentification plugin avec sorcery
  # @see config/initializers/sorcery
  authenticates_with_sorcery!
  
  # => Attrs that can be mass assigned!
  attr_accessible :email, :password, :password_confirmation
  
    
  # => Email should be present & unique
  validates :email, :presence => true, :uniqueness => true
  
  # => Password related validations
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  
end
