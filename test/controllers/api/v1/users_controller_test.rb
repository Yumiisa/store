require "test_helper"

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user=users(:one)
  end
  test 'should show user' do
    get api_v1_user_url(@user),as: :json
    assert_response :success
    #test to ensure response contain correct email
    json_response=JSON.parse(self.response.body)
    assert_equal @user.email, json_response["email"]

  end
  # test "the truth" do
  #   assert true
  # end
end
