class Answer < ApplicationRecord
	belongs_to :student ,inverse_of: :answers
	belongs_to :question


	validates_presence_of :option

end
