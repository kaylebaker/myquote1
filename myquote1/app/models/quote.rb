class Quote < ApplicationRecord
    belongs_to :user
    has_many :quote_lists, dependent: :destroy
    has_many :categories, through: :quote_lists
end