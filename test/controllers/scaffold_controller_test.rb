require 'test_helper'

class ScaffoldControllerTest < ActionController::TestCase
  test "should get comments" do
    get :comments
    assert_response :success
  end

end
