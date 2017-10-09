require 'test_helper'

class PersonalsControllerTest < ActionController::TestCase
  test "should get edit" do
    get :edit
    assert_response :success
  end

end
