require 'set'

class CSVHelper

  def initialize()
    # The ASCII table has been generated with the following code:
    #   p (0..127).each.collect { |i| i.chr }
    @ascii_table =
      SortedSet.new ["\u0000", "\u0001", "\u0002", "\u0003", "\u0004",
                     "\u0005", "\u0006", "\a", "\b", "\t", "\n", "\v",
                     "\f", "\r", "\u000E", "\u000F", "\u0010", "\u0011",
                     "\u0012", "\u0013", "\u0014", "\u0015", "\u0016",
                     "\u0017", "\u0018", "\u0019", "\u001A", "\e",
                     "\u001C", "\u001D", "\u001E", "\u001F", " ", "!",
                     "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+",
                     ",", "-", ".", "/", "0", "1", "2", "3", "4", "5",
                     "6", "7", "8", "9", ":", ";", "<", "=", ">", "?",
                     "@", "A", "B", "C", "D", "E", "F", "G", "H", "I",
                     "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
                     "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]",
                     "^", "_", "`", "a", "b", "c", "d", "e", "f", "g",
                     "h", "i", "j", "k", "l", "m", "n", "o", "p", "q",
                     "r", "s", "t", "u", "v", "w", "x", "y", "z", "{",
                     "|", "}", "~", "\u007F"]


    # Note: The ordering in the following array is not the result of any
    # statistical analysis, but is merely the result of an individual's
    # considerations.
    @sort_order =
      [# Classics
       ",", "\t",

       # `Rather' common
       "|", "/", "\\", " ",

       # One could argue a lot on the following ones.
       "!", "\"", "#", "$", "%", "&", "'", "*", "+", "-", ".", ":", ";",
       "=", "?", "@", "^", "_", "`", "~",

       # If one of the following pairs occurs, the other one is reasonably
       # likely to occure, too. This co-dependency lowers the possibility of
       # occurance compared to non-pair characters. Hence they are less
       # likely good seperator candidates.
       "(", ")", "[", "]", "{", "}", "<", ">",

       # The following escape sequences are less likely to occure in the data
       # itself than digits considering the nature of potential CSV data
       # (spreadsheet software exports, DB dumps, APIs, etc.).
       "\a", "\b", "\n", "\v", "\f", "\r", "\e",


       # One can assumethat the total number of numerical CSV data is higher
       # than the total number of alphabethical data it is more likely that
       # the data is exclusively numerical or the majority of the data of an
       # individual CSV file/string is numerical. Hence alphabetical
       # characters are more likely to be good seperator candidates.

       # Small-caps alphabethical characters make up the majority of strins
       # across domains. Hence capital letter characters are more likely to
       # be good seperator matches.
       "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
       "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",

       "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
       "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",

       "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",

       # The following ones are less `intuitively' used than the rest. Hence
       # they are considered to be less privileged when choosing seperators.
       # (There are reasonable arguments to consider them better candidates
       # than other ones, though. One could argue a lot, though.)
       "\u0000", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005",
       "\u0006", "\u000E", "\u000F", "\u0010", "\u0011", "\u0012",
       "\u0013", "\u0014", "\u0015", "\u0016", "\u0017", "\u0018",
       "\u0019", "\u001A", "\u001C", "\u001D", "\u001E", "\u001F",
       "\u007F"]
  end

  def unused_chars(string, sort=true, sort_order=@sort_order)
    # Get all characters which are in the ASCII table, but not in `string'
    if sort == true
      @ascii_table.subtract(SortedSet.new(string[0].chars)).sort_by { |x|
        sort_order.index(x) }
    else
      @ascii_table.subtract(SortedSet.new(string[0].chars)).to_a
    end
  end
end
