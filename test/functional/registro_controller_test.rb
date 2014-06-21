require 'test_helper'

class RegistroControllerTest < ActionController::TestCase
  test "should get registro" do
    get :registro
    assert_response :success
  end

end
