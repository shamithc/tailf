require 'test_helper'

module Tailf
  class LogControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
