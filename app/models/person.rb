class Person < ActiveRecord::Base
   attr_accessible :person_type,:first_name, :last_name, :email, :phone_home, :phone_cell, :gender, :user_id
  validates :first_name,:last_name,:phone_home,:phone_cell,:email,:presence=>true
  validates :phone_home,:phone_cell,:numericality=>true
  validates :email,:format=>{:with => /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/,
:message => "Enter a valid email address." }
  belongs_to :user
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
