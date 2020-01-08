# frozen_string_literal: true

require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::ControllerHelpers

  test 'should get index' do
    sign_in users(:one)

    get users_dashboard_index_url
    assert_response :success
  end
end
