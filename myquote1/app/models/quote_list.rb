class QuoteList < ApplicationRecord
  belongs_to :quote
  belongs_to :category
end
