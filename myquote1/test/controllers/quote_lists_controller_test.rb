require "test_helper"

class QuoteListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote_list = quote_lists(:one)
  end

  test "should get index" do
    get quote_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_list_url
    assert_response :success
  end

  test "should create quote_list" do
    assert_difference("QuoteList.count") do
      post quote_lists_url, params: { quote_list: { category_id: @quote_list.category_id, philosopher_id: @quote_list.philosopher_id, quote_id: @quote_list.quote_id } }
    end

    assert_redirected_to quote_list_url(QuoteList.last)
  end

  test "should show quote_list" do
    get quote_list_url(@quote_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_list_url(@quote_list)
    assert_response :success
  end

  test "should update quote_list" do
    patch quote_list_url(@quote_list), params: { quote_list: { category_id: @quote_list.category_id, philosopher_id: @quote_list.philosopher_id, quote_id: @quote_list.quote_id } }
    assert_redirected_to quote_list_url(@quote_list)
  end

  test "should destroy quote_list" do
    assert_difference("QuoteList.count", -1) do
      delete quote_list_url(@quote_list)
    end

    assert_redirected_to quote_lists_url
  end
end
