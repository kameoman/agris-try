require "application_system_test_case"

class AgrisTest < ApplicationSystemTestCase
  setup do
    @agri = agris(:one)
  end

  test "visiting the index" do
    visit agris_url
    assert_selector "h1", text: "Agris"
  end

  test "creating a Agri" do
    visit agris_url
    click_on "New Agri"

    fill_in "Comment", with: @agri.comment
    fill_in "Date", with: @agri.date
    fill_in "Kg", with: @agri.kg
    fill_in "Name", with: @agri.name
    fill_in "User", with: @agri.user_id
    click_on "Create Agri"

    assert_text "Agri was successfully created"
    click_on "Back"
  end

  test "updating a Agri" do
    visit agris_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @agri.comment
    fill_in "Date", with: @agri.date
    fill_in "Kg", with: @agri.kg
    fill_in "Name", with: @agri.name
    fill_in "User", with: @agri.user_id
    click_on "Update Agri"

    assert_text "Agri was successfully updated"
    click_on "Back"
  end

  test "destroying a Agri" do
    visit agris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agri was successfully destroyed"
  end
end
