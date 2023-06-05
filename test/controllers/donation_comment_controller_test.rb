require "test_helper"

class DonationCommentControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/donation_comments.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal DonationComment.count, data.length
  end
end
