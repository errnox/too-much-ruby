require_relative '../calculator/calculator'
require 'test/unit'

class CalculatorTest < Test::Unit::TestCase
  def setup a=3, b=12
    @a = a
    @b = b
  end

  def teardown
  end

  def test_sum
    calculator = Calculator.new
    assert_equal(calculator.sum(@a, @b), @a + @b)
  end

  def test_sub
    calculator = Calculator.new
    assert_equal(calculator.sub(@a, @b), @a - @b)
  end

  def test_mul
    calculator = Calculator.new
    assert_equal(calculator.mul(@a, @b), @a * @b)
  end

  def test_div
    calculator = Calculator.new
    assert_equal(calculator.div(@a, @b), @a / @b)
  end

  def test_div_failure
    calculator = Calculator.new
    assert_equal(calculator.div(3, 4), 1, 'Deviding is broken.')
  end
end

