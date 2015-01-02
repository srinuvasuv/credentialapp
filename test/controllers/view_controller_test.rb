require 'test_helper'

class ViewControllerTest < ActionController::TestCase
  test "should get viewind" do
    get :viewind
    assert_response :success
  end

  test "should get viewall" do
    get :viewall
    assert_response :success
  end

end
