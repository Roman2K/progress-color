require 'test/unit'
require 'progress_color'

class ProgressColorTest < Test::Unit::TestCase
  def test_at
    assert_equal "FF0000", ProgressColor.at(-0.10)
    assert_equal "FF0000", ProgressColor.at(0.00)
    assert_equal "FF8000", ProgressColor.at(0.25)
    assert_equal "FFA300", ProgressColor.at(0.32)
    assert_equal "FFFF00", ProgressColor.at(0.50)
    assert_equal "9EFF00", ProgressColor.at(0.69)
    assert_equal "80FF00", ProgressColor.at(0.75)
    assert_equal "00FF00", ProgressColor.at(1.00)
    assert_equal "00FF00", ProgressColor.at(1.10)
  end
end
