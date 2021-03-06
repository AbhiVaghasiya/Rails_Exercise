require "application_system_test_case"

class BookItemsTest < ApplicationSystemTestCase
  setup do
    @book_item = book_items(:one)
  end

  test "visiting the index" do
    visit book_items_url
    assert_selector "h1", text: "Book Items"
  end

  test "creating a Book item" do
    visit book_items_url
    click_on "New Book Item"

    fill_in "Author", with: @book_item.author_id
    fill_in "Publisher", with: @book_item.publisher_id
    fill_in "Title", with: @book_item.title
    click_on "Create Book item"

    assert_text "Book item was successfully created"
    click_on "Back"
  end

  test "updating a Book item" do
    visit book_items_url
    click_on "Edit", match: :first

    fill_in "Author", with: @book_item.author_id
    fill_in "Publisher", with: @book_item.publisher_id
    fill_in "Title", with: @book_item.title
    click_on "Update Book item"

    assert_text "Book item was successfully updated"
    click_on "Back"
  end

  test "destroying a Book item" do
    visit book_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book item was successfully destroyed"
  end
end
