# Public: Test class for regular expressions in Ruby
class RegexTest
  # def initialize string, regex
  #   @regex = regex
  #   @string = string
  # end

  # Public: Indicates if a string contains a specific regular expression
  # match.
  #
  # * string - String which should be checked.
  # * regex  - Regular expression to search for in +string+.
  #
  # Returns +true+ if +string+ contains +regex+, otherwise +false+.
  def contains? string, regex
    regex =~ string
  end

  # Public: Checks if a string contains a specific regular expression and
  # returns the match, if there is any.
  #
  # * string - String which should be checked.
  # * regex  - Regular expression to search for in +string+.
  #
  # Example
  #
  #   regex_test = RegexTest.new
  #   regex_test.matches? 'This is a test.', /i.*/
  #
  #   # => "is is a test."
  #
  #--
  # This line should not be commented.
  #++
  #
  # Returns the match, if any.
  def matches? string, regex
    regex.match string
  end


  # def run
  #   @regex =~ string
  # end
end

regex_test = RegexTest.new
puts regex_test.contains? 'This is a test.', /is/
puts regex_test.matches? 'This is a test.', /\ws/
puts regex_test.matches? 'This is a test.', /i.*/
