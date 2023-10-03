class SearchController < ApplicationController
  def index
    category_query = params[:category_query]
    if category_query.present?
      @categorymatch = QuoteList.joins(:category, :quote).where("categories.name LIKE ?", "%#{category_query}%")
      @quote_texts = @categorymatch.pluck('quotes.quote_text')
    end
  end
end