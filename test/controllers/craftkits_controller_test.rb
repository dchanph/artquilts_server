require 'test_helper'

class CraftkitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @craftkit = craftkits(:one)
  end

  test "should get index" do
    get craftkits_url
    assert_response :success
  end

  test "should get new" do
    get new_craftkit_url
    assert_response :success
  end

  test "should create craftkit" do
    assert_difference('Craftkit.count') do
      post craftkits_url, params: { craftkit: { craft: @craftkit.craft, donatekit_id: @craftkit.donatekit_id, qty: @craftkit.qty, references: @craftkit.references } }
    end

    assert_redirected_to craftkit_url(Craftkit.last)
  end

  test "should show craftkit" do
    get craftkit_url(@craftkit)
    assert_response :success
  end

  test "should get edit" do
    get edit_craftkit_url(@craftkit)
    assert_response :success
  end

  test "should update craftkit" do
    patch craftkit_url(@craftkit), params: { craftkit: { craft: @craftkit.craft, donatekit_id: @craftkit.donatekit_id, qty: @craftkit.qty, references: @craftkit.references } }
    assert_redirected_to craftkit_url(@craftkit)
  end

  test "should destroy craftkit" do
    assert_difference('Craftkit.count', -1) do
      delete craftkit_url(@craftkit)
    end

    assert_redirected_to craftkits_url
  end
end
