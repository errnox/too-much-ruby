# Public: Provides helper utilities for common tasks on strings
module Strings
  # Public: Returns a separator line (75 chars wide).
  def Strings.separator(char='-')
    char * 75
  end

  # Public: Returns example text.
  def Strings.example_text
    File.open('res/manpage', 'r')
  end

  # Public: Calculates the edit distance (Levenstein distance) for two
  # array-like structures.
  #
  # * a - Array structure or string.
  # * b - Array structure or string.
  #
  # Public: Returns the edit distance as int.
  def Strings.levenstein a, b
    case
    when a.class == String then a = a.split
    when b.class == String then b = b.split
    end

    case
    when a.empty? then b.length
    when b.empty? then a.length
    else [(a[0] == b[0] ? 0 : 1) + Strings.levenstein(a[1..-1], b[1..-1]),
          1 + Strings.levenstein(a[1..-1], b),
          1 + Strings.levenstein(a, b[1..-1])].min
    end
  end

  def Strings.underline_re_matches(string, pattern, non_matching_char=' ',
                                   matching_char = '^')
    offsets = []
    underline_string = ''
    string.gsub(pattern) do |m|
      offsets << $~.offset(0)
    end
    previous_offset = [0, 0]
    for offset in offsets
      underline_string += non_matching_char * (offset[0] -
                                               previous_offset[1])
      underline_string += matching_char * (offset[1] - offset[0])
      previous_offset = offset
    end

    underline_string += non_matching_char * (string.length -
                                             previous_offset[1])
    string + "\n" + underline_string
  end

  def Strings.string_to_array_of_strings_of_length(string, length=75)
    i = 0
    strings = []
    s = ''
    string.each_char do |char|
      i += 1
      if i <= length
        s += char
      else
        strings.push(s)
        s = ''
        i = 0
      end
    end
    strings
  end
end
