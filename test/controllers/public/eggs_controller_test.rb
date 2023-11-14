require "test_helper"

class Public::EggsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_eggs_index_url
    assert_response :success
  end

  test "should get show" do
    get public_eggs_show_url
    assert_response :success
  end
end
