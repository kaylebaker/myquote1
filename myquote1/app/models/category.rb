class Category < ApplicationRecord
    has_many :quote, through: :quote_lists
end
