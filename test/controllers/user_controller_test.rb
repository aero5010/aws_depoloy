require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get registrate" do
    get :registrate
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
