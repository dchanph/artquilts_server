require "application_system_test_case"

class CraftsTest < ApplicationSystemTestCase
  setup do
    @craft = crafts(:one)
  end

  test "visiting the index" do
    visit crafts_url
    assert_selector "h1", text: "Crafts"
  end

  test "creating a Craft" do
    visit crafts_url
    click_on "New Craft"

    fill_in "Pdtcategory", with: @craft.pdtCategory
    fill_in "Pdtimg", with: @craft.pdtImg
    fill_in "Pdtname", with: @craft.pdtName
    fill_in "Pdtprice", with: @craft.pdtPrice
    click_on "Create Craft"

    assert_text "Craft was successfully created"
    click_on "Back"
  end

  test "updating a Craft" do
    visit crafts_url
    click_on "Edit", match: :first

    fill_in "Pdtcategory", with: @craft.pdtCategory
    fill_in "Pdtimg", with: @craft.pdtImg
    fill_in "Pdtname", with: @craft.pdtName
    fill_in "Pdtprice", with: @craft.pdtPrice
    click_on "Update Craft"

    assert_text "Craft was successfully updated"
    click_on "Back"
  end

  test "destroying a Craft" do
    visit crafts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Craft was successfully destroyed"
  end
end
