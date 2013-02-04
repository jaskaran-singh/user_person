module PeopleHelper
  def add_hospital_link(name)
  link_to name, '#', :class => "add_hospital"
  end
end
