require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  test 'show activated user' do
    activated_user = users(:foobar)
    get user_url(activated_user)
    assert_template 'users/show'
  end

  test 'show not activated user' do
    not_activated_user = users(:fizzbuzz)
    get user_url(not_activated_user)
    assert_redirected_to root_url
  end
end
