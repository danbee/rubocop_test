require "test/unit"

class RubocopTest < Test::Unit::TestCase
  def test_style_map_compact_with_conditional_block
    items = [true, false, false, true]

    def meets_certain_condition?(item)
      item
    end

    new_items = items.map do |item|
      next unless meets_certain_condition?(item)
      item
    end.compact

    assert_equal(new_items, [true, true])
  end
end
