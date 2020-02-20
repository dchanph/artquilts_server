require "application_system_test_case"

class CraftkitsTest < ApplicationSystemTestCase
  setup do
    @craftkit = craftkits(:one)
  end

  test "visiting the index" do
    visit craftkits_url
    assert_selector "h1", text: "Craftkits"
  end

  test "creating a Craftkit" do
    visit craftkits_url
    click_on "New Craftkit"

    fill_in "Craft", with: @craftkit.craft
    fill_in "Donatekit", with: @craftkit.donatekit_id
    fill_in "Qty", with: @craftkit.qty
    fill_in "References", with: @craftkit.references
    click_on "Create Craftkit"

    assert_text "Craftkit was successfully created"
    click_on "Back"
  end

  test "updating a Craftkit" do
    visit craftkits_url
    click_on "Edit", match: :first

    fill_in "Craft", with: @craftkit.craft
    fill_in "Donatekit", with: @craftkit.donatekit_id
    fill_in "Qty", with: @craftkit.qty
    fill_in "References", with: @craftkit.references
    click_on "Update Craftkit"

    assert_text "Craftkit was successfully updated"
    click_on "Back"
  end

  test "destroying a Craftkit" do
    visit craftkits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Craftkit was successfully destroyed"
  end
end
