require "test_helper"

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get albums_name:string_url
    assert_response :success
  end

  test "should get text:description" do
    get albums_text:description_url
    assert_response :success
  end
end
