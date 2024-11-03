require "test_helper"

class DogOwnershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_ownership = dog_ownerships(:one)
  end

  test "should get index" do
    get dog_ownerships_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_ownership_url
    assert_response :success
  end

  test "should create dog_ownership" do
    assert_difference("DogOwnership.count") do
      post dog_ownerships_url, params: { dog_ownership: { dog_id: @dog_ownership.dog_id, owner_id: @dog_ownership.owner_id } }
    end

    assert_redirected_to dog_ownership_url(DogOwnership.last)
  end

  test "should show dog_ownership" do
    get dog_ownership_url(@dog_ownership)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_ownership_url(@dog_ownership)
    assert_response :success
  end

  test "should update dog_ownership" do
    patch dog_ownership_url(@dog_ownership), params: { dog_ownership: { dog_id: @dog_ownership.dog_id, owner_id: @dog_ownership.owner_id } }
    assert_redirected_to dog_ownership_url(@dog_ownership)
  end

  test "should destroy dog_ownership" do
    assert_difference("DogOwnership.count", -1) do
      delete dog_ownership_url(@dog_ownership)
    end

    assert_redirected_to dog_ownerships_url
  end
end
