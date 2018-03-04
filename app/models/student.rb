class Student < ApplicationRecord
	has_many :answers , inverse_of: :student 
	 accepts_nested_attributes_for :answers , reject_if: proc { |attributes| attributes[:option].blank? } 


	 validates_presence_of :name,:email,:mobile
end
