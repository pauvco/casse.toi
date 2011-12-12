require 'test_helper'

class TargetControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get sex:string" do
    get :sex:string
    assert_response :success
  end

  test "should get score:integer" do
    get :score:integer
    assert_response :success
  end

  test "should get valitaded:boolean" do
    get :valitaded:boolean
    assert_response :success
  end

end
