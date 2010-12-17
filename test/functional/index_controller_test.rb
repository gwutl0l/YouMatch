require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get books" do
    get :books
    assert_response :success
  end

end
