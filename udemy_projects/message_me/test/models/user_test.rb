require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.create(username: "Zaragoza", password: "password123")
  end

  test "username should be valid" do
    assert @user.valid?
  end

  test "username invalid" do
    @user.save
    @user2 = User.create(username: "Zaragoza", password: "something")
    assert_not @user2.valid?
  end
end
