require "test_helper"

require 'date'
require_relative 'support/human'

class AgingTest < Minitest::Test
  def setup
    @human = Human.new(Date.new(1994, 7, 7))
  end

  def test_that_it_has_a_version_number
    refute_nil ::Aging::VERSION
  end

  def test_it_count_year
    assert @human.age == 23
  end
end
