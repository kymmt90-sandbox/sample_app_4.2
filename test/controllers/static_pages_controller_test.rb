require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test 'should get home' do
    get :home
    assert_response :success
  end

  test 'should get correct home title' do
    get :home
    assert_select 'title', 'Home | Ruby on Rails Tutorial Sample App'
  end

  test 'should get help' do
    get :help
    assert_response :success
  end

  test 'should get correct help title' do
    get :help
    assert_select 'title', 'Help | Ruby on Rails Tutorial Sample App'
  end

  test 'should get about' do
    get :about
    assert_response :success
  end

  test 'should get correct about title' do
    get :about
    assert_select 'title', 'About | Ruby on Rails Tutorial Sample App'
  end
end
