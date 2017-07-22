class Calculator
  def initialize a=0, b=0
    @a = a
    @b = b
  end

  attr_reader :a, :b

  def to_s
    "<Calculator: @a=#{@a}, @b=#{@b}>"
  end

  def sum a=@a, b=@b
    a + b
  end

  def sub a, b
    a - b
  end

  def mul a, b
    a * b
  end

  def div a, b
    a / b
  end

  def message message='<Default Message>'
    message
  end

  # Public: Takes one of the calculator's own method invocations and writes
  # the result to stdout. Theoretically any other mehod invocation can be
  # passed to this method.
  #
  # Example:
  #   calculator = Calculator.new
  #   calculator.test { calculator.mul 10, 2 }
  #
  # Output:
  #   --------------------------------------------------------------------------
  #   Testing:
  #
  #   20
  #   --------------------------------------------------------------------------
  # Returns nothing, but writes the testing ouput to stdout.
  def test
    puts '-' * 75
    puts "Testing:\n\n"
    puts yield
    puts '-' * 75
  end

  # Public: Take a proc and execute it.
  #
  # Returns nothing, but writes the testing ouput to stdout.
  def test2 &action
    puts "Testing:\n\n"
    action.call
  end

end


class DummyCalculator < Calculator
  @@vendor_id = 'Some_Vendor_ID'

  def initialize name, serial_number=nil
    @name = name
    if serial_number
      @serial_number = serial_number
    else
      @serial_number = rand(100)
      end
  end

  def DummyCalculator.calc_info
    "Info:      DummyCalculator\nVendor ID: #{@@vendor_id}"
  end


  def vendor_id
    @@vendor_id
  end

  def id
    @name + '_' + @serial_number.to_s
  end

  def id=(name)
    puts name.to_s + '_' + @serial_number.to_s
  end
end
