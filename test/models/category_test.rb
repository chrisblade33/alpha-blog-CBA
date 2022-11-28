require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "Sports")
  end

  test "Categories doit être valide" do
    assert @category.valid?
  end

  test "le nom doit être présent" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "Le nom doit être unique" do
    @category.save
    @category1 = Category.new(name: "Sports")
    assert_not @category1.valid?
  end

  test "Le nom ne doit pas être trop court" do
    @category.name = "aa"
    assert_not @category.valid?
  end
  test "Le nom ne doit pas être trop long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end

end