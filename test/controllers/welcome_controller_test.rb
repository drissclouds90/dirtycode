require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Dirtycode"
  end


  test "should get index" do
      get welcome_index_url
      assert_response :success
      assert_select "title", "Welcome | Dirtycode"
  end
end
