require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "new should be found" do
    get "/teams/new"
    assert_response :ok
  end

  #test "index should be found" do
  
  #  get "/teams#index"
  #  assert_response :ok
  #end
end
