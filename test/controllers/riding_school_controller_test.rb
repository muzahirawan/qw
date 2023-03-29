require "test_helper"

class RidingSchoolControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get riding_school_index_url
    assert_response :success
  end
end
