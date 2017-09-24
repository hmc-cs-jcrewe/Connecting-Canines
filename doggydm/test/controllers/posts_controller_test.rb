require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get end_page" do
    get posts_end_page_url
    assert_response :success
  end

end
