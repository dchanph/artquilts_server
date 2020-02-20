require "application_system_test_case"

class DonatekitsTest < ApplicationSystemTestCase
  setup do
    @donatekit = donatekits(:one)
  end

  test "visiting the index" do
    visit donatekits_url
    assert_selector "h1", text: "Donatekits"
  end

  test "creating a Donatekit" do
    visit donatekits_url
    click_on "New Donatekit"

    fill_in "Kitcategory", with: @donatekit.kitCategory
    fill_in "Kitcost", with: @donatekit.kitCost
    fill_in "Kitdetails", with: @donatekit.kitDetails
    fill_in "Kitimg", with: @donatekit.kitImg
    fill_in "Kitname", with: @donatekit.kitName
    click_on "Create Donatekit"

    assert_text "Donatekit was successfully created"
    click_on "Back"
  end

  test "updating a Donatekit" do
    visit donatekits_url
    click_on "Edit", match: :first

    fill_in "Kitcategory", with: @donatekit.kitCategory
    fill_in "Kitcost", with: @donatekit.kitCost
    fill_in "Kitdetails", with: @donatekit.kitDetails
    fill_in "Kitimg", with: @donatekit.kitImg
    fill_in "Kitname", with: @donatekit.kitName
    click_on "Update Donatekit"

    assert_text "Donatekit was successfully updated"
    click_on "Back"
  end

  test "destroying a Donatekit" do
    visit donatekits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donatekit was successfully destroyed"
  end
end
