require_relative 'test_helper'

class CatalogTest < Minitest::Test

  def setup
    @catalog = Catalog.new
    @entry = Entry.new("fish", "chips")
    @catalog.add(@entry)
  end

  def test_contains_an_added_entry
    assert @catalog.contains(@entry)
  end

 def test_indexes_entries_by_name
    assert_equal @entry, @catalog.entry_for("fish")
    assert_nil @catalog.entry_for("unicorn")
 end

  def test_cannot_add_two_entries_with_same_name
    skip "I don't understand custom exceptions in Ruby."
    @catalog.add(Entry.new("fish", "peas"))
    assert_raises "IllegalArgumentException"
  end
end