class User < ActiveRecord::Base
	validates :email, :uniqueness => true, :length => { :within => 5..50 }, :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
  validates :first_name, :presence => {:message => "L'email est invalide'"}
  validates :last_name, :presence => {:message => "L'email est invalide'"}
  validates :mobile_number, :presence => {:message => "L'email est invalide'"}
  validates_numericality_of :number_of_children, :only_integer => true
  validates :job, :presence => {:message => "L'email est invalide'"}
end
