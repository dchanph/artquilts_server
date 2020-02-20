require 'test_helper'

class DonatekitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donatekit = donatekits(:one)
  end

  test "should get index" do
    get donatekits_url
    assert_response :success
  end

  test "should get new" do
    get new_donatekit_url
    assert_response :success
  end

  test "should create donatekit" do
    assert_difference('Donatekit.count') do
      post donatekits_url, params: { donatekit: { kitCategory: @donatekit.kitCategory, kitCost: @donatekit.kitCost, kitDetails: @donatekit.kitDetails, kitImg: @donatekit.kitImg, kitName: @donatekit.kitName } }
    end

    assert_redirected_to donatekit_url(Donatekit.last)
  end

  test "should show donatekit" do
    get donatekit_url(@donatekit)
    assert_response :success
  end

  test "should get edit" do
    get edit_donatekit_url(@donatekit)
    assert_response :success
  end

  test "should update donatekit" do
    patch donatekit_url(@donatekit), params: { donatekit: { kitCategory: @donatekit.kitCategory, kitCost: @donatekit.kitCost, kitDetails: @donatekit.kitDetails, kitImg: @donatekit.kitImg, kitName: @donatekit.kitName } }
    assert_redirected_to donatekit_url(@donatekit)
  end

  test "should destroy donatekit" do
    assert_difference('Donatekit.count', -1) do
      delete donatekit_url(@donatekit)
    end

    assert_redirected_to donatekits_url
  end
end
