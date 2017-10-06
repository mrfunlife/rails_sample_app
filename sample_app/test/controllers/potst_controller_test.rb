require 'test_helper'

class PotstControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get potst_new_url
    assert_response :success
  end

end
