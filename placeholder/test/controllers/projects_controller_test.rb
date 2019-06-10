require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
 # test "the truth" do
  #   assert true
  # end
  

  test "new should be found" do
    get "/projects/new"
    assert_response :found
  end

  test "index should be found" do
   
    get "/projects#index"
    assert_response :found
  end
  
end
