require "test_helper"

class PropsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get props_index_url
    assert_response :success
  end
end
