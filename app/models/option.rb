class Option < ApplicationRecord
	belongs_to :question ,inverse_of: :options
		 validates_presence_of :choose_value

end
