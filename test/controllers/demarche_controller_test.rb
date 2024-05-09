require "test_helper"

class DemarcheControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get demarche_index_url
    assert_response :success
  end
end
