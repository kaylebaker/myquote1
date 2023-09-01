require "application_system_test_case"

class QuoteListsTest < ApplicationSystemTestCase
  setup do
    @quote_list = quote_lists(:one)
  end

  test "visiting the index" do
    visit quote_lists_url
    assert_selector "h1", text: "Quote lists"
  end

  test "should create quote list" do
    visit quote_lists_url
    click_on "New quote list"

    fill_in "Category", with: @quote_list.category_id
    fill_in "Philosopher", with: @quote_list.philosopher_id
    fill_in "Quote", with: @quote_list.quote_id
    click_on "Create Quote list"

    assert_text "Quote list was successfully created"
    click_on "Back"
  end

  test "should update Quote list" do
    visit quote_list_url(@quote_list)
    click_on "Edit this quote list", match: :first

    fill_in "Category", with: @quote_list.category_id
    fill_in "Philosopher", with: @quote_list.philosopher_id
    fill_in "Quote", with: @quote_list.quote_id
    click_on "Update Quote list"

    assert_text "Quote list was successfully updated"
    click_on "Back"
  end

  test "should destroy Quote list" do
    visit quote_list_url(@quote_list)
    click_on "Destroy this quote list", match: :first

    assert_text "Quote list was successfully destroyed"
  end
end
