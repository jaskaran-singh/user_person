class User < ActiveRecord::Base
  # attr_accessible :title, :body
  validates :email_address,:presence=>true,:format=>{:with => /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/,
:message => "Enter a valid email address." }
  has_many :persons
  accepts_nested_attributes_for :persons
  def new_person_attributes=attributes
  attributes.each do |record|
  persons.build(record)
  end
  end
end
