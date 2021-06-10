require 'test_helper'

class AgrisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agri = agris(:one)
  end

  test "should get index" do
    get agris_url
    assert_response :success
  end

  test "should get new" do
    get new_agri_url
    assert_response :success
  end

  test "should create agri" do
    assert_difference('Agri.count') do
      post agris_url, params: { agri: { comment: @agri.comment, date: @agri.date, kg: @agri.kg, name: @agri.name, user_id: @agri.user_id } }
    end

    assert_redirected_to agri_url(Agri.last)
  end

  test "should show agri" do
    get agri_url(@agri)
    assert_response :success
  end

  test "should get edit" do
    get edit_agri_url(@agri)
    assert_response :success
  end

  test "should update agri" do
    patch agri_url(@agri), params: { agri: { comment: @agri.comment, date: @agri.date, kg: @agri.kg, name: @agri.name, user_id: @agri.user_id } }
    assert_redirected_to agri_url(@agri)
  end

  test "should destroy agri" do
    assert_difference('Agri.count', -1) do
      delete agri_url(@agri)
    end

    assert_redirected_to agris_url
  end
end
