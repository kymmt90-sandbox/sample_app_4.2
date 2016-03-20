require 'test_helper'

class HomePageTest < ActionDispatch::IntegrationTest
  test 'home page stats' do
    user = users(:foobar)
    log_in_as user
    get root_url
    assert_template 'static_pages/home'
    assert_match user.microposts.count.to_s, response.body
    assert_match user.following.count.to_s,  response.body
    assert_match user.followers.count.to_s,  response.body
  end
end
