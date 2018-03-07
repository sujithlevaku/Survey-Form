class Question < ApplicationRecord
	has_many :answers
	has_many :options, inverse_of: :question

	accepts_nested_attributes_for :options , reject_if: proc { |attributes| attributes[:choose_value].blank? }

	 validates_presence_of :body

include PgSearch
pg_search_scope :search_content_for, against: :body, using: { tsearch: { any_word: true } }



def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("body LIKE ?", "%#{search}%")
end





end
