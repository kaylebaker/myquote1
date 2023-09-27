class Category < ApplicationRecord
    has_many :quotes, through: :quote_lists
end
