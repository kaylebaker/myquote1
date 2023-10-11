class Quote < ApplicationRecord
    belongs_to :user
    belongs_to :philosopher
    has_many :quote_lists, dependent: :destroy
    has_many :categories, through: :quote_lists

    accepts_nested_attributes_for :quote_lists, reject_if: :all_blank, allow_destroy: true
end