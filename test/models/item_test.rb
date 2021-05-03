require "test_helper"

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "full description" do 
    item = Item.new(color: "blue", description: "cap")
    assert "blue cap"
  end
end
