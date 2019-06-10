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

  test "create should be found" do
 
    post "/projects#create", params: {name: "testTeam"}
    assert_response :found
  end

  test "show shoud be found" do
    team = teams(:one)

    get "/projects#show", params: team.id
    assert_response :found
  end
  
end
