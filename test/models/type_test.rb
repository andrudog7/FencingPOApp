require "test_helper"

class TypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "total" do 
    type = Type.find(1)
    type.items.count
  end
end
