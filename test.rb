# -*- coding: utf-8 -*-
require_relative 'helpers/strings'

require 'pp'

# Miscellaneous tests without any particular order or structure

#--------------------------------------------------------------------------

# puts 9 / 4
# puts '-' * 75
# puts '9 ' + ' / '  + ' 4'
# puts '-' + 75.to_s
# puts '3'.to_i + 3
# puts '3'.to_f + 3
# puts 3.to_f + 3
# puts -3.to_f + 3.to_i * '4'.to_f
# puts 'test'.to_i
# puts 'test'.to_f
# puts 'test'.to_f
# puts '99.99'.to_i
# puts '99.99'.to_f

#--------------------------------------------------------------------------

# puts "Write something:\n"
# input = gets.chomp
# puts 'You wrote:'
# puts input.to_s

#--------------------------------------------------------------------------

# puts (10.* 9).+ 3
# puts '3'.to_i.+ 3
# s = '   fooo__    '.strip
# puts s + '.'

#--------------------------------------------------------------------------

# puts 'I will reverse that for you:'
# puts gets.length.to_s.reverse

#--------------------------------------------------------------------------

# puts gets.downcase
# puts gets.upcase
# puts gets.swapcase
# puts gets.capitalize
# puts gets.downcase.capitalize

#--------------------------------------------------------------------------

# puts gets.center(75)
# puts gets.center(75)

#--------------------------------------------------------------------------

# s = 'This is a test.'
# adj = 50
# puts s.ljust adj
# puts s.rjust adj
# line_start = 'Name: John'
# output = line_start + 'Something'.rjust(75 - line_start.length)
# puts output

#--------------------------------------------------------------------------

# puts 75.abs
# puts -75.3.abs

# puts(rand(100))

#--------------------------------------------------------------------------

# puts rand(Math::PI)
# puts Math::E
# puts Math::cos(20)
# puts Math::sqrt(20)

#--------------------------------------------------------------------------

# input = ''
# while input != 'QUIT'
#   puts input
#   input = gets.chomp
# end

# a = true
# b = false
# puts a and b

# arr = ['foo', 3, 'bar', 'one', 'something else']
# puts arr.to_s
# puts arr
# puts arr[3]
# puts Strings.separator

# arr.each do |item|
#   puts item.to_s.length.to_s.rjust(75)
# end

# 'This is a test.'.length.times do |n|
#   puts n
# end

# 10.times do |i|
#   arr.push (i**i).to_s
# end

# puts arr.to_s

# arr.length.times do
#   puts arr.pop
# end

# puts arr.to_s

# puts Strings.separator

# arr = ['This', 'is', 'a', 'test', '.']
# for elem in arr
#   puts elem.to_s
# end

# for i in  1..30
#   puts i.to_s
# end

#--------------------------------------------------------------------------

# def make_table(first_name='<First Name>',second_name='<Second Name>',
#                age='<Age>')
#   table = 'First Name:  ' + first_name.to_s + "\n"
#   table += 'Second Name: ' + second_name.to_s + "\n"
#   table += 'Age:         ' + age.to_s + "\n"
# end

# puts make_table('John', 'Doe', '31')
# puts Strings.separator
# puts make_table 'Anne', 'Doe', '32'
# puts Strings.separator
# puts make_table


#--------------------------------------------------------------------------

# puts Strings.separator
# puts Time.at(0).mday

#--------------------------------------------------------------------------

# class Test
#   def fact(n)
#     if n <= 1
#       1
#     else
#       n * fact(n - 1)
#     end
#   end

#   def get_from_hash(hash, key)
#     value = 0
#     hash.each do |k, v|
#       if k == key
#         value = v
#       end
#     end
#     return value
#   end

# end


# class Test
#   def frame(string)
#     message = ''
#     length = string.length
#     message += '+-' + '-' * length + '-+' + "\n"
#     message += '| ' + string + ' |' + "\n"
#     message += '+-' + '-' * length + '-+' + "\n"
#   end

#   def frame2(string)
#     message = ''
#     m = string.split("\n")
#     length = m.max{|a, b| a.length <=> b.length}.length
#     message += '+-' + '-' * length + '-+' + "\n"
#     m.each do |line|
#       message += '| ' + line.chomp + ' |'.rjust(length - line.length + 2) + "\n"
#     end
#     message += '+-' + '-' * length + '-+' + "\n"
#     return message
#   end
# end


# test = Test.new

# 10.times do |i|
#   puts test.fact(i)
# end

# puts Strings.separator

# hash = {'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4}
# puts test.get_from_hash(hash, 'two')

# puts test.frame('This is a test.')
# puts test.frame2("Can you\nread this?")
# puts test.frame2("Can you really\nread this or are you just telling\nlies?")

#--------------------------------------------------------------------------

# class Die
#   def roll
#     1 + rand(6)
#   end
# end

# dice = []

# 10.times do
#   dice.push(Die.new)
# end

# results = []

# dice.each do |die|
#   results.push(die.roll)
# end

# puts results.to_s

#--------------------------------------------------------------------------

# class Parser
#   def initialize(input)
#     @input = input
#     @parsed
#     parse
#   end

#   def parse
#     splitted_text = @input.split
#     c = 0
#     splitted_text.each do |token|
#         splitted_text[c] = '_' + dispatch_token(token) + '_'
#         c += 1
#     end
#     @parsed = splitted_text.join(' ')
#   end

#   def show_result
#     @parsed
#   end

#   private

#   def dispatch_token(token)
#     token.upcase
#   end
# end

# parser = Parser.new 'This is a test.'
# puts parser.show_result
# # puts parser.parse

#--------------------------------------------------------------------------

# # Test 1
# greeting = Proc.new do
#   'Hello!'
# end

# puts greeting.call
# puts greeting.call
# puts greeting.call
# puts greeting.call

# name = Proc.new do |name|
#   puts 'Name: ' + name
# end

# name.call 'John'
# name.call 'Mike'
# name.call 'Pete'


# # Test 2
# def do_something proc
#   proc.call
# end

# say_something = Proc.new do
#   puts 'This is a test.'
# end

# do_something say_something


# # Test 3
# def do_something_else proc, message
#   proc.call message
# end

# say_something_else = Proc.new do |message|
#   puts message.upcase
# end

# do_something_else(say_something_else, 'This is another test.')


# # Test 4

# def compose proc1, proc2
#   Proc.new do |x, y|
#     proc2.call(proc1.call(x, y), x*x)
#   end
# end

# do_sum = Proc.new do |x, y|
#   x + y
# end

# do_sub = Proc.new do |x, y|
#   x - y
# end

# puts compose(do_sum, do_sub).call(240, 100)

#--------------------------------------------------------------------------

# class Shape
#   def initialize color
#     @color = color
#     @rotation = 0
#   end

#   def rotate(degrees)
#     @rotation += degrees
#   end

#   def info
#     info = ''
#     info += 'Color:    ' + @color + "\n"
#     info += 'Rotation: ' + @rotation.to_s + "\n"
#   end
# end

# class Square < Shape
#   def initialize color, transparency
#     super(color)
#     @transparency = transparency
#     @vertices = 4
#     @edges = 4
#   end

#   def info
#     info = ''
#     info += 'Color:        ' + @color + "\n"
#     info += 'Rotation:     ' + @rotation.to_s + "\n"
#     info += 'Transparency: ' + @transparency.to_s + "\n"
#   end
# end


# # shape = Shape.new '#FF0000'
# # shape.rotate(30)
# # puts shape.info

# square = Square.new '#00FF00', 0.5
# puts square.info
# puts Strings.separator

# #--------------------------------------------------------------------------

# class Collector
#   include Enumerable

#   def initialize data
#     @data = data
#   end

#   def each
#     data = []
#     @data.each do |d|
#       data.push '_' + d.to_s + '_'
#     end
#     data
#   end

#   def <=> other
#       @data <=> other.data
#   end

# end

# collector = Collector.new [3, 4, 7, 130, 19, 11, 948]
# puts collector.each


#--------------------------------------------------------------------------

# File.open('res/manpage', 'r') do |file|
#   while line = file.gets
#     puts line
#   end
# end

# string = ''

# Strings.example_text.each do |line|
#   string += line.upcase
# end

# File.open('res/output', 'w')  do |file|
#   file.puts string
# end

# puts Strings.separator
# puts File.size('res/output').to_s + ' bytes'

# puts Strings.separator
# require 'find'
# Find.find '../' do |file|
#   type = File.file? file
#   puts file.to_s + " (#{'file' if type == true}#{'dir' unless type == true})"
# end

#--------------------------------------------------------------------------

# puts Strings.separator
# s1 = 'This is a string.'
# s2 = 'This is another string.'
# puts Strings.levenstein(s1, s2)

#--------------------------------------------------------------------------

# puts Strings.separator
# require_relative 'calculator/calculator'
# calculator = Calculator.new
# puts calculator.sum(3, 4)
# puts calculator.sub(3, 4)
# puts calculator.mul(3, 4)
# puts calculator.div(3, 4)
# puts calculator.message('This is a test.')
# puts calculator.message
# puts Strings.separator

# calculator2 = Calculator.new 12, 14
# puts calculator2.sum
# puts calculator2.inspect
# puts calculator2.to_s
# calculator2.test { calculator2.mul(2, 3) }
# puts calculator2.a


# puts calculator2.a

#--------------------------------------------------------------------------

# require_relative 'calculator/calculator'

# dummy_calculator = DummyCalculator.new 'Test'
# dummy_calculator.id = 'Foooooo'
# puts dummy_calculator.id
# puts dummy_calculator.vendor_id
# puts DummyCalculator.calc_info

# puts Strings.separator

#--------------------------------------------------------------------------

# arr = []
# rand(30).times { arr.push rand(100) }
# puts arr.to_s

# arr.collect do |x|
#   puts x.succ
# end

#--------------------------------------------------------------------------

# class File
#   def File.open_and_process *args
#     f = File.open(*args)
#     yield f
#     f.close
#   end
# end

# File.open_and_process('res/manpage', 'r') do |file|
#   print while file.gets
# end

#--------------------------------------------------------------------------

# require_relative 'calculator/calculator'

# calculator = Calculator.new
# calculator.test2 { puts "This is a test." }

#--------------------------------------------------------------------------

# document1 = <<STRING
# This

#    is a
# test
#         .
# STRING

# puts document1

# document2 = <<-TERMINATOR
# This

#         is    a
# test
#  .
#    TERMINATOR

# puts document2

#--------------------------------------------------------------------------

# def multiple_args_test arg, *args
#   "arg:  #{arg}\nargs: #{args.join(', ')}"
# end

# puts multiple_args_test "foo", "bar", "baz", "foobar", "foobaz"

# puts Strings.separator

# def multiple_args_test2 *args
#   s = ''
#   args.each { |arg| s += "arg: #{arg}\n" }
#   s
# end

# puts multiple_args_test2 "foo", "bar", "baz", "foobar", "foobaz"

# puts Strings.separator

# def proc_test &proc
#   proc.call
# end

# proc_test { puts 'foo' }

# puts Strings.separator

# arr = ['one', 'two', 'three', 'four', 'five']
# arr = arr.collect { |element| element.upcase }
# puts arr.join(", ")

#--------------------------------------------------------------------------

# puts `ls -lisa`

# output = %x{ls -lisa}.reverse
# output.split("\n").each { |line| puts line.rjust(75) }

#--------------------------------------------------------------------------

# class Shape
#   def initialize color='#AEAEAE'
#     @color = color
#   end

#   attr_reader :color

#   def color= color='#AEAEAE'
#     @color = color
#   end
# end

# shape = Shape.new
# puts shape.color
# shape.color = '#FF000'
# puts shape.color

#--------------------------------------------------------------------------

# def case_test
#   a = rand(5)

#   case a

#   when 0
#     puts 'zero'
#   when 1
#     puts 'one'
#   when 2
#     puts 'two'
#   when 3
#     puts 'three'
#   else
#     puts 'NOTHING'
#   end
# end

# 30.times { case_test }


#--------------------------------------------------------------------------

# 10.step(100, 10) { |i| puts i.succ.succ.succ }

#--------------------------------------------------------------------------

# File.open('res/manpage').grep /^ *a.*s$/ do |line| puts line end

#--------------------------------------------------------------------------

# for i in 0..10 do
#   puts i
# end

#--------------------------------------------------------------------------

# def prompt_and_get prompt
#   print prompt
#   res = readline.chomp
#   throw :quit_requested if res == '!'
#   return res
# end

# catch :quit_requested do
#   name = prompt_and_get "Name: "
#   name = prompt_and_get "Age: "
#   name = prompt_and_get "Sex: "
# end

#--------------------------------------------------------------------------

# require_relative 'helpers/commands'

# puts Commands.ls
# puts Commands.date
# puts Commands.figlet "Test"

#--------------------------------------------------------------------------

# file = File.open('res/manpage', 'r')
# file.each_byte { |byte| putc byte }
# file.each_line { |line| puts line }

# "This\nis a\ntest.".each_line { |line| puts line }
# "This\nis a\ntest.".each_line { |line| puts line.dump }
# "This\nis a\ntest.".each_line('e') { |line| puts line.dump }

# IO.foreach("res/manpage") { |line| puts line }

#--------------------------------------------------------------------------

# str = "<html>\n"
# 10.times { |i| str << "    <p>Test #{i}</p>\n" }
# str << "</html>"
# puts str

#--------------------------------------------------------------------------

# a = 'This is a test.'
# b = a.dup

# class <<a
#   def to_s
#     "VALUE: #{self}"
#   end
# end

# puts a.to_s

#--------------------------------------------------------------------------

# class Test
#   def Test.greet
#     puts "Name: #{name}"
#   end

# end

# Test.greet

#--------------------------------------------------------------------------

# # Implicit blocks

# def take_implicit_block
#   yield if block_given?
# end

# take_implicit_block do
#   puts "This is an implicit block."
# end

#--------------------------------------------------------------------------

# # Using method references (represented as a symbol object) as blocks in a
# # function call's argument list
# p ['a', 'b', 'c'].map(&:upcase)
# # This is equivalent to:
# p ['a', 'b', 'c'].map { |string| string.upcase }

#--------------------------------------------------------------------------

# # Procs

# def generate_proc(message)
#   return Proc.new { |string| string.upcase.center(75) }
# end

# test_proc = generate_proc("This is a test.")

# p test_proc.call("Bar foo").gsub(' ', '_')

#--------------------------------------------------------------------------

# # Lambdas

# # Using the `lambda' keyword
# test_lambda1 = lambda { |a, b| puts"a: #{a} - b: #{b}" }
# test_lambda1.call("foo", "bar")
# # This is equivalent to (syntactic sugar):
# test_lambda2 = ->(a, b) { puts"a: #{a} - b: #{b}" }
# test_lambda2.call("foo", "bar")

#--------------------------------------------------------------------------

# test_proc = Proc.new { |a, b, c|  puts "a: #{a} - b: #{b} - c: #{c}"}
# p test_proc.arity
# p test_proc.call("foo", "bar", [1, 2, 3])

#--------------------------------------------------------------------------

# def message (x, *rest)
#   puts "`x': #{x} - `rest': #{rest}"
#   puts "length of `rest': #{rest.length}"
#   rest.each_with_index do |n, i|
#     puts "REST \##{i}: `#{rest[i]}'"
#   end
# end

# message 'foo', 'bar', 'baz', 'zab'

#--------------------------------------------------------------------------

# def do_list(*rest)
#   rest.each do |n|
#     puts "ARG: #{n}"
#   end
# end

# do_list 'foo', 'bar', 111, 222, 333, ['foo', 1]

#--------------------------------------------------------------------------

# words = %w{ This is a test.}
# words.each { |word| puts word }

# string = %Q(
# one
# two
# three
# four
# five
# )

# p string

# string = %q!This is a string.!
# puts string

# pattern = %r!\bfoo\b!  # Equivalent to `pattern = /\bfoo\b/'`
# string = 'This foo is bar a foobar test. barfoo'
# puts string =~ pattern
# puts string !~ %r{\bsomething\b}

#--------------------------------------------------------------------------

# colors = {
#   "red" => "#FF0000",
#   "green" => "#00FF00",
#   "blue" => "#0000FF",
#   "white" => "#FFFFFF",
#   "black" => "#000000"
# }

# p colors.keys
# p colors.values
# puts colors['green']

#--------------------------------------------------------------------------

# time_regex = /\b\d\d:\d\d:\d\d\b/
# sentence = 'It was 20:30:00 o\'clock... or was it 20:45:00?'

# puts sentence =~ time_regex

# puts sentence.gsub(time_regex, '<TIMESTAMP>')

#--------------------------------------------------------------------------

# first_name_id = 'First Name'
# last_name_id = 'Lasst Name'
# age_id = 'Age'
# telephone_id = 'Telephone'

# employees =
#   [
#    {
#      first_name_id => 'John',
#      last_name_id => 'Smith',
#      age_id => '31',
#      telephone_id => '12345678',
#    },
#    {
#      first_name_id => 'Peter',
#      last_name_id => 'Gareth',
#      age_id => '44',
#      telephone_id => '92929282',
#    },
#    {
#      first_name_id => 'Anne',
#      last_name_id => 'Johns',
#      age_id => '35',
#      telephone_id => '48482749',
#    },
# {
#      first_name_id => 'Josh',
#      last_name_id => 'Peters',
#      age_id => '32',
#      telephone_id => '94710473',
#    },
#   ]

# employees.each do |employee|
#   puts "#{employee[first_name_id]} (#{employee[age_id]})"
#   # printf "Last name %s\n", employee[last_name_id]
# end

#--------------------------------------------------------------------------

# ARGV.each { |arg| puts "Arg: #{arg}" }
# puts "--------------------------------------------------------------------\
# -------\nLength: #{ARGV.length}"

#--------------------------------------------------------------------------

# # Class test

# class Report
#   attr_reader :title, :authors, :topics
#   attr_writer :title, :authors, :topics

#   def initialize(title, authors, topics)
#     @title = title
#     @authors = authors
#     @topics = topics
#   end


#   def summarize
#     separator = "---------------------------------------------------------\
# ----------------"
#     summary = "#{separator}\nTitle: #{@title}\n#{separator}\nAuthors: "

#     @authors.each_with_index do |author, i|
#       summary += author
#       if i < @authors.length - 1
#         summary += ', '
#       end
#     end

#     summary += "\n#{separator}\nTopics:\n\n"

#     @topics.each do |topic|
#       summary += "- #{topic['name'].capitalize}\n"
#       topic['subtopics'].each {|subtopic| summary +=
#         "  + #{subtopic.capitalize}\n"}
#     end

#     summary += separator
#     summary
#   end
# end

# report = Report.new('Test report', ['John Smith', 'Pete Gareth'],
#                     [
#                      {
#                        'name' => 'colors',
#                        'subtopics' => ['red', 'green', 'blue']
#                      },
#                      {
#                        'name' => 'animals',
#                        'subtopics' => ['dog', 'cat', 'mouse', 'tiger']
#                      },
#                      {
#                        'name' => 'numbers',
#                        'subtopics' => ['123', '456']
#                      },
#                     ])

# report.authors << 'James Johnson'
# puts report.summarize

#--------------------------------------------------------------------------

# # Access control test

# class House
#   def initialize (owner, age, color)
#     @owner = owner
#     @age = age
#     @color = color
#     @chimney_on = false
#   end


#   private


#   def light_chimney
#     @chimney_on = true
#   end

#   def put_chimney_off
#     @chimney_on = false
#   end


#   # protected
#   public


#   def check_electricity
#     # super
#     "---------------------------------------------------------------------\
# -----\n\
# Checking electricity on house with following properities:\n\
# \n#{report}\n\n"
#   end


#   public


#   def report
#     "Owner: #{@owner}\nAge: #{@age}\nColor: #{@color}"
#   end
# end

# class ArtsyHouse < House
#   def initialize(owner, age, color, architect)
#     super(owner, age, color)
#     @architect = architect
#   end

#   def check_electricity
#     super
#   end

#   def report
#     super + "\nArchitect: #{@architect}"
#   end
# end


# green_house = House.new('John Smith', 10, 'green')
# red_house = House.new('Peter Gareth', 5, 'red')
# yellow_artsy_house = ArtsyHouse.new('Anne Holmes', 2, 'yellow', 'Bill Brown')

# houses = [green_house, red_house, yellow_artsy_house]

# houses.each do |house|
# #   # public
# #   puts "------------------------------------------------------------------\
# # ---------"
# #   puts house.report

#   # # protected
#   # puts house.check_electricity

#   # # private
#   # house.light_chimney
# end

#--------------------------------------------------------------------------

# arr = []
# 20.times { |i| arr[i] = i*i }

# p arr

# p arr[5..10]  # [<start>..<stop inclusive>]
# p arr[5...10]  # [<start>...<stop exclusive>]

# p arr[5, 10]  # [<start>, <count>]

# arr[-1] = 999
# p arr

# arr[arr.length + 3] = 123
# p arr

#--------------------------------------------------------------------------

# def generate_random_hash(number_of_elements)
#   random_hash = {}
#   number_of_elements.times do |i|
#     random_hash["key#{i.to_s}"] = "value#{(i*i).to_s}}"
#   end
#   random_hash
# end

# random_hash = generate_random_hash(10)
# pp random_hash

#--------------------------------------------------------------------------

# Chaining methods (fluent interface)

# class Inspector
#   def initialize(string)
#     @string = string
#   end

#   def upcase()
#     @string.upcase!
#     self
#   end

#   def downcase()
#     @string.downcase!
#     self
#   end

#   def append_newlines(n=1)
#     n.times { @string += '_' }
#     self
#   end

#   def string()
#     @string
#   end
# end

# inspector = Inspector.new('This is a test.')
# puts inspector.append_newlines(3).downcase.string

#--------------------------------------------------------------------------

# Nonsense

# class This
#   def initialize()
#     @string = 'This new'
#   end

#   def car()
#     @string += ' car'
#     self
#   end

#   def is()
#     @string += ' is'
#     self
#   end

#   def great()
#     @string += ' great'
#     self
#   end

#   def period()
#     @string += '.'
#     @string
#   end
# end

# puts This.new.car.is.great.period

#--------------------------------------------------------------------------

# class Words
#   def initialize(words)
#     @words = words
#   end

#   def [](key)
#     if key.kind_of?(Integer)
#       return @words[key]
#     else
#       for i in 0..@words.length
#         if @words[i] == key
#           return i  # TODO: break somewhere
#         end
#       end
#     end
#   end
# end

# words = Words.new(["foo", "bar", "baz", "foobar", "foobaz", "barfoo"])
# # puts words[2]
# puts words['baz']

#--------------------------------------------------------------------------

# def beautify(string)
#   "--- #{string.upcase} ---"
# end

# def modify_words(words)
#   words.each_with_index { |word, i| words[i] = "*#{word}*" }
#   yield 'foo'
# end

# words = ['This', 'is', 'a', 'test', '.']
# # word = 'foobar'
# puts modify_words(words) { |word| puts beautify word }

# # beautify('This is a test.')

#--------------------------------------------------------------------------

# colors = {
#   'red' => 0xff000,
#   'green' => 0x00fff00,
#   'blue' => 0x0000ff
# }

# colors.values.each { |value| puts "#{value.class}: #{value}" }

#--------------------------------------------------------------------------

# # `include'/mix-ins

# module WallOpening
#   def let_air_come_in(speed = 1)
#     "Letting air come in at speed: #{speed}"
#   end
# end

# class TransparentObject
#   def initialize(transparency)
#     @transparency = transparency
#   end

#   def get_transparency(arg)

#   end
# end


# class Window < TransparentObject  # Simple inheritance
#   attr_accessor :panes

#   def initialize(panes=1, transparency=1)
#     @panes = panes
#     super(transparency)
#   end

#   include WallOpening  # Mixing in module `WallOpening'`


#   def open()
#     'Opening window'
#   end

#   def close()
#     'Closing window'
#   end

#   def info()
#     "---------------------------------------------------------------------\
# ------\n\
# INFO\n====\n\nPane#{'s' if @panes != 1}: #{@panes}\n\
# Transparency: #{@transparency}\n\
# --------------------------------------------------------------------------\
# -\n"
#   end
# end

# window = Window.new(panes=4, transparency=18)
# puts window.info
# window.panes = 999
# puts window.info
# puts window.let_air_come_in(300)
# puts window.is_a? WallOpening
# puts window.is_a? TransparentObject

#--------------------------------------------------------------------------

# # Approach 1

# def show_re(string, re)
#   if string =~ re
#     string + "\n" +
#       "#{'-' * ($`.length - 1)}" + '>' +  # Left arrow
#       "#{' ' * $&.length}" +  # Matching part
#       '<' "#{'-' * ($'.length - 1)}"  # Right arrow
#   else
#     "NO MATCH"
#   end
# end

# # puts show_re("What we do in life echoes in Eternity.", /\bechoes\b/)


# Approach 2

# string = 'This is, yes, it really is (read "is"), a test.'
# pattern = /\bis\b/

# puts Strings.underline_re_matches(string, pattern)


# # Long strings (wider than the terminal in use)

# string = 'Lorem ipsum dolor sit amet, consectetaur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
# pattern = /\b\w*\b/

# strings = Strings.string_to_array_of_strings_of_length(string, length=75)
# strings.each do |string|
#   puts Strings.underline_re_matches(string, pattern)
# end

# puts "\033[31mFoo\033[m"

#--------------------------------------------------------------------------

# string = 'This foo is bar a foobar test. barfoo baz zab bar foo!'
# puts string.gsub(/\bfoo\b/) { $&.upcase }

#--------------------------------------------------------------------------

# alphabet = ('a'..'z')
# p alphabet.sort.reverse

#--------------------------------------------------------------------------

# # Aliasing

# def foo()
#   'FOO'
# end

# alias plusplus foo

# puts plusplus

#--------------------------------------------------------------------------

# date = `date`
# # date = %x!date!
# puts date

#--------------------------------------------------------------------------

# def Sing(lyrics)
#   true
# end

# def dance(dance)
#   true
# end

# def you(foo)
#   true
# end

# def decide(foo)
#   true
# end

# def something(foo)
#   true
# end

# def comes(foo)
#   true
# end

# Chachacha = true
# want = true
# otherwise = true
# up = true
# Sing "Lalala" and dance Chachacha if you want unless you decide otherwise or something comes up

#--------------------------------------------------------------------------

# # Iterating using the `for ... in' construct and implementing `each'

# class WeekDays
#   def initialize()
#     @weekdays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday',
#                  'Saturday', 'Sunday']
#   end

#   def each()
#     @weekdays.each { |day| yield day }
#   end
# end

# weekdays = WeekDays.new()
# weekdays.each { |day| puts day }

#--------------------------------------------------------------------------

# # # Error handling

# # string = "puts 'foo'"  # No error
# # string = "-----"  # SyntaxError
# string = "puts 'foo'+ 1"  # StandardError

# begin
#   eval string
# rescue SyntaxError, NameError => error
#   puts "String does not compile: #{error}\n"
# rescue StandardError => error
#   puts "Error running script: #{error}\n"
# ensure
#   puts 'Done'
# end

#--------------------------------------------------------------------------

# puts 'One'
# catch (:foo) do
#   puts 'Two'
#   throw :foo
#   puts 'Three'
# end
# puts 'Four'

#--------------------------------------------------------------------------

# # Implementing the `Comparable' mix-in

# class Argument
#   attr_reader :loudness, :followers, :impact
#   # XXX: Changing `@loudness' or `@followers' should update `impact'
#   attr_writer :loudness, :followers, :impact

#   def initialize(loudness, followers)
#     @loudness = loudness
#     @followers = followers
#     @impact = @loudness + @followers
#   end

#   include Comparable


#   def <=>(other)
#     @impact <=> other.impact
#   end
# end

# one_argument = Argument.new(10, 20)
# two_argument = Argument.new(5, 30)

# def compare_with_all_comparison_operators(one, two)
#   comparisons = {}
#   operators = ['<', '>', '<=', '>=', '==', '!=', '<=>']
#   # XXX: Use of `eval'!
#   # (Also: This is not beautiful in general.)
#   operators.each { |operator| eval("comparisons['#{operator}'] = one " +
#                                    operator + 'two') }
#   comparisons
# end

# # 1. Before change
# first_comparison = compare_with_all_comparison_operators(one_argument,
#                                                          two_argument)

# # Reference hash
# foo_comparison = compare_with_all_comparison_operators(one_argument,
#                                                        two_argument)
# # Change the object which is be compared
# one_argument.impact = 999

# # 2. After change
# second_comparison = compare_with_all_comparison_operators(one_argument,
#                                                           two_argument)

# # Comparing hashes (Ruby's built-in functionality!)
# p first_comparison == first_comparison  # Should be `true'
# p first_comparison == foo_comparison  # Should be `true'
# p first_comparison == second_comparison  # Should be `false'

#--------------------------------------------------------------------------

# # Threads

# t1 = Thread.new {
#   print "Start thread 1\n"
#   sleep(rand(0) / 10.0)
#   print "End thread 1\n"
# }

# t1['foo'] = 'FOO'  # Thread-local variable

# t2 = Thread.new {
#   print "Start thread 2\n"
#   print t1['foo'] + "\n"
#   sleep(rand(0) / 10.0)
#   print "End thread 2\n"
# }

# t1.join
# t2.join

#--------------------------------------------------------------------------

# # 1. Creating a class for a particular object only
# #    (`class <<object_name')
# # 2. Extend a particular object with a module
# #    (object_name.extend(SomeModule))

# a = 'one'

# module PrettyThing
#   def prettify()
#     "_#{self}_"
#   end
# end

# module InterestingStuff
#   def amaze()
#     "AMAZE AMAZE AMAZE"
#   end
# end


# class << a  # Add a class to one particular object
#   attr_reader :name
#   attr_writer :name

#   include PrettyThing

#   def initialize(name='NAME')
#     @name = name
#   end

#   def emphasize()
#     "*#{self}*"
#   end
# end

# puts a.emphasize
# puts a.prettify  # The custom class method is now available on `a'
# puts a.name
# a.name = 'FOOBAR'
# puts a.name

# a.extend(InterestingStuff)
# puts a.amaze  # The module method is now available on `a'

# puts "\n\nClasses:\n========\n\n"
# puts a.class.class
# puts '  ^'
# puts '  |'
# puts a.class

#--------------------------------------------------------------------------

# # Dynamically create methods

# def build_method(name, body)
#   define_method(name, body)
# end

# class MethodEater
#   build_method :eat, Proc.new { |*params|
#     params.each { |param| puts param.to_s }
#   }
# end

# method_eater = MethodEater.new()
# method_eater.eat('foo', 'bar', 'baz')

#--------------------------------------------------------------------------

# class Person
#   def wave(*persons)
#     "Waving to #{persons.join(' ')}"
#   end
# end

# peter = Person.new()
# friends = %w{John, Gary, Ann, Marie}
# puts peter.wave(friends)
# puts peter.send(:wave, friends)  # Sending to object's method

#--------------------------------------------------------------------------

# # Dynamically define named classes
# # 
# # 1. Use `Class.new' to create a new, anonymous class
# # 2. Use `define_method' to add methods to the new class
# # 3. Use `const_set' to add the class as a named constant to some namespace
# # 
# # Point 2. can be circumvented by passing a block to `Class.new'

# # Common Ancestor for new classes
# class Being
#   def be()
#     "I am #{self}."
#   end
# end

# # Container for new classes
# new_classes = []

# 10.times do |i|
#   new_class = Class.new(Being) do
#     def initialize(description="<description>")
#       @description = description
#     end

#     def describe()
#       "Description: #{@description}"
#     end
#   end

#   # Add the new class to the namespace of the current module
#   self.class.const_set("BeingSubclass#{i}", new_class)
#   # Add the new class to the containter for all new classes
#   new_classes << new_class
# end

# # Show all new class objects
# # p new_classes  # DEBUG

# # Create an individual instance
# # b1 = BeingSubclass1.new('Foo')
# # puts b1.describe

# # Make one instance for each new class and call a method on each
# new_classes.each_with_index do |new_class, i|
#   new_instance = new_class.new("SomePoorExistence#{i}")
#   puts new_instance.describe()
# end

#--------------------------------------------------------------------------

# class Ancestor
#   def foo()
#     'FOO'
#   end
# end

# self.class.const_set(:SomeClass, Class.new(Ancestor) do
#                        def initialize(description)
#                          @description = description
#                        end
                       
#                        def bar()
#                          "BAR: #{@description}"
#                        end
#                      end)
# some_class = SomeClass.new('SomeSomeSome')
# puts some_class.bar
# puts some_class.foo

#--------------------------------------------------------------------------

# # Structs

# # `User' is a Struct
# User = Struct.new(:name, :age)

# # # Which is equal to this:
# # class User
# #   attr_accessor :name, :age

# #   def initialize(name, age)
# #     @name = name
# #     @age = age
# #   end
# # end

# # # Theoretically the following construct would work similarly
# # class User < Struct.new(:name, :age)
# # end

# user = User.new('Peter', 35)
# puts user.name
# puts user.age

#--------------------------------------------------------------------------

# # Get list of all superclasses of a class

# class Thought
#   def cause()
#     'CAUSE'
#   end
# end

# class Idea < Thought
#   def inspire()
#     'INSPIRE'
#   end
# end

# class Illusion < Idea
#   def confuse()
#     'CONFUSE'
#   end
# end

# idea = Idea.new()
# puts idea.cause
# puts idea.inspire

# puts Strings.separator

# illusion = Illusion.new()
# puts illusion.cause
# puts illusion.inspire
# puts illusion.confuse

# puts Strings.separator
# puts idea.class.name
# puts illusion.class.name

# puts Strings.separator
# puts Idea.superclass

# puts Strings.separator('.')
# puts Illusion.superclass
# puts Illusion.superclass.superclass
# puts Illusion.superclass.superclass.superclass

# puts Strings.separator()
# puts Idea.ancestors
# puts Strings.separator('.')
# puts Illusion.ancestors

# puts Strings.separator()
# puts Idea.descendants
# puts Strings.separator('.')
# puts Illusion.descendants

#--------------------------------------------------------------------------

# # Get all descendants of a class in the inheritance hierarchy

# class Parent
#   def self.descendants()
#     ObjectSpace.each_object(Class).select { |klass| klass < self }
#   end
# end

# class Child < Parent
# end

# class GrandChild < Parent
# end


# puts Parent.descendants
# puts Strings.separator()
# puts Child.descendants
# puts Strings.separator()
# puts GrandChild.descendants

#--------------------------------------------------------------------------

# class String
#   alias :old_length :length
#   def length(*args)
#     result = old_length(*args)
#     puts self.methods
#     # puts "lengt(#{args.join(' ,')}) returned #{result}"
#     result
#   end
# end

# "This is a string.".length
# "Foobar foobaz".length
# "foo".length

# -------------------------------------------------------------------------

# class Something
# end

# something = Something.new()
# # Dynamically create an instance variable and set its value
# something.instance_variable_set(:@timestamp, Time.new())
# # Dynamically retrieve the value of an instance variable
# puts something.instance_variable_get(:@timestamp)

#--------------------------------------------------------------------------

# # Trace the interpreter

# class Test
#   def test
#     a = 1
#     b = 2
#   end
# end


# set_trace_func Proc.new{ |event, file, line, id, binding, classname|
#   printf("%8s %s:%-2d %10s %8s\n", event, file, line, id, binding,
#          classname)
# }

# t = Test.new
# t.test

#--------------------------------------------------------------------------

# require 'delegate'


# sizeInInches = [ 10, 15, 22, 120 ]



# # "Class `Feet' shall be a delegate of class `Array'..."
# class Feet < DelegateClass(Array)
#   def initialize(arr)
#     super(arr)  # "... for object `arr'"
#   end

#   def [](*n)
#     val = super(*n)
#     case val.class
#     when Numeric; val/12.0
#     else;         val.collect {|i| i/12.0}
#     end
#   end
# end

# sizeInFeet = Feet.new(sizeInInches)
# puts sizeInInches[0..3]
# puts Strings.separator('.')
# puts sizeInFeet[0..3]

#--------------------------------------------------------------------------

# def ___(char='-', length=75)
#   char * length
# end

# puts ___
# puts ___('.')
# puts ___('#', 40)

#--------------------------------------------------------------------------


# # Dynamically adding aliases
# #
# # XXX: Probably not working with `alias' as seen below
# # Rather try to use `define_singleton_method' somehow.

# def foo(char='-', length=75)
#   char * length
# end

# # 10.times { |i| alias "load#{i}".to_sym foo.to_sym }
# 10.times { |i| alias ":load".to_sym foo }

# puts load

# # load1
# # load2
# # load3

#--------------------------------------------------------------------------

# # CSV

# require 'csv'

# # # Reading

# # # CSV.foreach('res/csv/input.csv', {:col_sep => ','}) do |row|
# # data = CSV.read('res/csv/input.csv')
# # pp data


# # Writing

# CSV.open('res/csv/output.csv', 'w', {:col_sep => ','}) do |csv|
#   10.times do |i|  # Rows
#     csv << 5.times.collect { |i| "field_#{i}" }  # Columns
#   end
# end

#--------------------------------------------------------------------------

# # Sorting an array by the index of another array

# # Take the index from this array...
# sort_order = ['z', 'q', 'a', 'c', 'b', 'd']
# # ... and sort the following array with it...
# string = ['a', 'b', 'c', 'z']
# # ...like so:
# sorted_string = string.sort_by { |x| sort_order.index(x) }
# # Here is the result:
# puts "Original: #{string}"
# puts "Result:   #{sorted_string}"

#--------------------------------------------------------------------------

# require_relative 'helpers/csv'

# # Alternative way of getting unique chars in a string.
# The `helpers/csv' module does this differently. It uses `Set' objects
# which are faster since they use hashes as storage.
# p s.split(//).uniq

# s = "This is a test. Foo foo Bar bar Foobar foobar Baz baz foo bar foobaz,"
# # p CSVHelper.unused_chars(s)
# manpage_bash = `man bash`
# manpage_man = `man man`
# manpage_pig = `man pig`

# p CSVHelper.new.unused_chars(s)

# first_n = 10
# p CSVHelper.new.unused_chars_sorted(s)[0..first_n]
# puts
# p CSVHelper.new.unused_chars_sorted(",.o\tfoobar")[0..first_n]
# puts
# p CSVHelper.new.unused_chars_sorted("\t!1234567890-|/\\")[0..first_n]
# puts
# p CSVHelper.new.unused_chars_sorted(", \"#$\%&'*+.")[0..first_n]
# puts
# p CSVHelper.new.unused_chars_sorted(".+*'&")[0..first_n]

# p CSVHelper.new.unused_chars(s)

#--------------------------------------------------------------------------

# # Sockets


# require 'socket'

# # A simple socket connection to a server

# socket = TCPSocket.open('localhost', '55555', local_host='localhost',
#                         local_port='55555')
# # socket.sync = true

# socket.write "Connection established\n"
# while line = gets
#   socket.write line
# end

# socket.close


# # A simple server

# server = TCPServer.new('localhost', '55555')
# loop do
#   client = server.accept
#   client.puts Time.now.ctime
#   client.puts 'Closing the connection. Bye!'
#   client.close
# end


# # A multi-threaded server (serving multiple clients)

# server = TCPServer.open('localhost', '55555')
# loop do
#   Thread.start(server.accept) do |client|
#     client.puts 'Hello!'
#     client.puts "Time is #{Time.now}"
#     client.close
#   end
# end

#--------------------------------------------------------------------------

# # Hash arguments

# require 'launchy'

# def element_colors(selector, options)
#   options = { :bg => '#FEFEFE', :fg => '#090909',
#     :border => '#090909'}.merge(options)

#   <<-END
# /* auto-generated rule */
# #{selector} {
#   background-color: #{options[:bg]}
#   foreground-color: #{options[:fg]}
#   color: #{options[:fg]}
#   border-color: #{options[:border]}
# }
# END
# end


# # puts element_colors('div', :bg => '#FFEEEE', :fg => '#EEEEFF',
# #                     :border => '#EEFFEE')

# # Write to temporary file
# temp_file_path = 'res/tmp/temp.txt'
# temp_file = File.open(temp_file_path, 'w')
# temp_file.write(element_colors('div', :bg => '#FFEEE',
#                                :border => '#EEFFEE'))
# temp_file.close

# # Open the temporary file in the browser
# # Launchy.open(temp_file_path)

#--------------------------------------------------------------------------

# def foo()
#   puts "__method__: #{__method__}"
#   puts "__callee__: #{__callee__}"
# end

# foo

#--------------------------------------------------------------------------

# def foo(*args)
#   n = args[0] or 1111
#   m = args[1] or 2222
#   puts "n: #{n}, m: #{m}"
# end

# foo
# foo(10)
# foo(10, 20)

#--------------------------------------------------------------------------

# # Hash iteration

# h = {
#   :name => "John",
#   :age => 34,
#   :city => "New York",
#   :job => "waiter"
# }

# h.each do |key, value|
#   puts "Key: #{key}, Value: #{value}"
# end

#--------------------------------------------------------------------------

# # Helpers

# def do_foo(n)
#   n.times { |i| puts "Foo: #{i}" }
# end

# def do_bar() 
#   puts "BAR"
# end

# def do_baz(one, two, three)
#   puts "one: #{one}, two: #{two}, three: #{three}"
# end

# # Coammands

# commands = {
#   :foo => [:do_foo, 3],
#   :bar => [:do_bar],
#   :baz => [:do_baz, 'ONE', 'TWO', 'THREE']
# }

# # Command invokation

# def invoke_command(command_array)
#   send(command_array[0], *command_array[1..-1])
# end

# puts "--------------------------------------------------------------------\
# -------"
# invoke_command(commands[:foo])
# puts "--------------------------------------------------------------------\
# -------"
# invoke_command(commands[:bar])
# puts "--------------------------------------------------------------------\
# -------"
# invoke_command(commands[:baz])


#--------------------------------------------------------------------------

# def foo
#   "FOO"
# end

# puts foo

#--------------------------------------------------------------------------

# class TreeNode
#   attr_accessor :name, :data, :children

#   def initialize(name, data, children = [])
#     @name = name
#     @data = data
#     @children = children
#   end

#   # def to_s
#   #   "#{@name} #{children}"
#   # end
# end

# class Tree
#   attr_accessor :root

#   def initialize(root)
#     @root = root
#     @last_found_node = nil  # Semi-global state!
#   end

#   def find(node_name, node, is_node=false)
#     # Extreme case: the searched node is one of the children of the root
#     # note
#     if is_node
#       if node.children.collect { |c| c.name }.include? node_name
#         @last_found_node = node.children[0]
#       end
#     end

#     node.children.each do |child|
#       children = child.children.select { |n| n.name == node_name }

#       if (!children.collect { |n| n.name }.include? node_name)
#         self.find node_name, child
#       else
#         @last_found_node = children[0]  # Semi-global state!
#       end

#     end
#     return @last_found_node
#   end

#   def insert_child(node_name, new_node, node=@root)
#     node.children.each do |child|
#       if child.name == node_name
#         child.children << new_node
#       else
#         self.insert_child node_name, new_node, child
#       end

#     end
#   end
# end



# class HashTest
#   attr_accessor :nested_hash, :nested_array, :tree

#   def initialize(hash)
#     @nested_hash = hash
#     @nested_array = []
#   end

#   def traverse_hash(hash)
#     hash.each_pair do |key, value|

#       current = key

#       value.each_pair do |k, v|
#         puts "key: #{key}, k: #{k}"
#       end

#       traverse_hash value

#     end
#   end
# end

# nested_hash = {
#   "colors" => {
#     "bright" => {
#       "red" => {},
#       "orange" => {},
#       "yellow" => {},
#     },
#     "dark" => {
#       "blue" => {},
#       "purple" => {},
#     },
#     # "people" => {
#     #   "tall" => {
#     #     "funny" => {},
#     #     "boring" => {},
#     #     "sad" => {},
#     #   },
#     #   "small" => {
#     #     "interesting" => {},
#     #     "uninteresting" => {},
#     #   },
#     # }
#   },
# }

# # hash_test = HashTest.new(nested_hash)
# # hash_test.traverse_hash(hash_test.nested_hash)
# # pp hash_test.nested_array
# # pp hash_test.tree


# # tree = Tree.new(TreeNode.new('root', ['root', 'data', 1, 2, 3],
# #                              [TreeNode.new('colors', ['root', 'data', 1, 2, 3],
# #                                            [TreeNode.new('bright', ['root', 'data', 1, 2, 3]),
# #                                             TreeNode.new('dark', ['root', 'data', 1, 2, 3])])]))

# # pp '###########################################################################'
# # pp tree.find('bright', tree.root)

# tree = Tree.new(TreeNode.new('root', ['root', 'data', 1, 2, 3],
#                              [TreeNode.new('colors', ['various colors',
#                                                       'hex colors',
#                                                       'rgb colors'])]))

# tree.insert_child('colors', TreeNode.new('bright', ['bright colors',
#                                                     'example: #FF0000']))
# tree.insert_child('bright', TreeNode.new('red', ['#FF0000',
#                                                  'rgb(255, 0, 0)']))
# tree.insert_child('bright', TreeNode.new('white', ['#FFFFFF',
#                                                    'rgb(255, 255, 255)']))
# tree.insert_child('colors', TreeNode.new('dark', ['dark colors',
#                                                   'example: #000000']))
# tree.insert_child('dark', TreeNode.new('blue', ['#0000FF',
#                                                 'rgb(0, 0, 255)']))
# tree.insert_child('dark', TreeNode.new('black', ['#000000',
#                                                  'rgb(0, 0, 0)']))

# # puts '---------------------------------------------------------------------------'
# # pp tree

# puts '==========================================================================='
# pp tree.find('bright', tree.root, true)


#--------------------------------------------------------------------------

# people =
#   [
#    ["Peter", "Smith", "39", "New York"],
#    ["Ann", "Werner", "27", "San Francisco"],
#    ["Paul", "Meyer", "44", "Washington"],
#    ["Tom", "Pete", "28", "Detroit"],
#    ["Nick", "Farmer", "31", "San Francisco"],
#   ]

# sorted_people = people.sort_by { |p| p[2] }

# pp sorted_people


#--------------------------------------------------------------------------

def move_to_first_position_in_array(array, string)
  array.insert(0, array.delete_at(array.index(string)))
end

def sort_by_custom_array(array, sort_array)
  sort_array.reverse.each do |string|
    move_to_first_position_in_array array, string
  end
end

array =
  [
   'colors',
   'animals',
   'machines',
   'trees',
   'painters',
   'inventors',
   'teachers',
   'preachers',
   'butchers',
   'firemen',
   'policemen',
   'poets',
  ]

sort_array =
  [
   'butchers',
   'policemen',
   'painters',
   'trees',
   'colors',
  ]

sort_by_custom_array array, sort_array
pp array

pp a
