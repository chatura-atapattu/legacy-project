require 'test_helper'

class GroupDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_detail = group_details(:one)
  end

  test "should get index" do
    get group_details_url
    assert_response :success
  end

  test "should get new" do
    get new_group_detail_url
    assert_response :success
  end

  test "should create group_detail" do
    assert_difference('GroupDetail.count') do
      post group_details_url, params: { group_detail: { about_us: @group_detail.about_us, initiatives: @group_detail.initiatives } }
    end

    assert_redirected_to group_detail_url(GroupDetail.last)
  end

  test "should show group_detail" do
    get group_detail_url(@group_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_detail_url(@group_detail)
    assert_response :success
  end

  test "should update group_detail" do
    patch group_detail_url(@group_detail), params: { group_detail: { about_us: @group_detail.about_us, initiatives: @group_detail.initiatives } }
    assert_redirected_to group_detail_url(@group_detail)
  end

  test "should destroy group_detail" do
    assert_difference('GroupDetail.count', -1) do
      delete group_detail_url(@group_detail)
    end

    assert_redirected_to group_details_url
  end
end
