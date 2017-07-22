require 'tk'

class Test
  def initialize
    @root = TkRoot.new { title 'Test' }
    TkLabel.new(root) {
      text 'This is a test.'
      pack { padx 15; pady 15; side 'left' }
    }
    Tk.mainloop
  end
end

test = Test.new
