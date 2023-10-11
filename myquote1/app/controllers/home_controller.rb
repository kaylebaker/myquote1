class HomeController < ApplicationController

  def index
    # Sort the quotes in descending order by timestamp and grab the first five
    @quotes = Quote.includes(:categories).order(created_at: :desc).take(5)
  end

  def uquotes
    @quotes = Quote.includes(:quote_lists).where(user_id: session[:user_id])
  end

end
