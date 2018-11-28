require 'test_helper'

class NicknamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nickname = nicknames(:one)
  end

  test "should get index" do
    get nicknames_url
    assert_response :success
  end

  test "should get new" do
    get new_nickname_url
    assert_response :success
  end

  test "should create nickname" do
    assert_difference('Nickname.count') do
      post nicknames_url, params: { nickname: { dog_id: @nickname.dog_id, name: @nickname.name } }
    end

    assert_redirected_to nickname_url(Nickname.last)
  end

  test "should show nickname" do
    get nickname_url(@nickname)
    assert_response :success
  end

  test "should get edit" do
    get edit_nickname_url(@nickname)
    assert_response :success
  end

  test "should update nickname" do
    patch nickname_url(@nickname), params: { nickname: { dog_id: @nickname.dog_id, name: @nickname.name } }
    assert_redirected_to nickname_url(@nickname)
  end

  test "should destroy nickname" do
    assert_difference('Nickname.count', -1) do
      delete nickname_url(@nickname)
    end

    assert_redirected_to nicknames_url
  end
end
