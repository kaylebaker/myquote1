class SearchController < ApplicationController
  def index
    category_query = params[:category_query]
    if category_query.present?
      # Perform a database query to find all QuoteLists associated with a Category that matches category_query
      @categorymatch = QuoteList.joins(:category, :quote).where("categories.name LIKE ? AND quotes.isPublic = ?", "%#{category_query}%", true)
    end
  end
end