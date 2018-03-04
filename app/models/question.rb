class Question < ApplicationRecord
	has_many :answers
	has_many :options, inverse_of: :question

	accepts_nested_attributes_for :options , reject_if: proc { |attributes| attributes[:choose_value].blank? }


	 validates_presence_of :body


end
