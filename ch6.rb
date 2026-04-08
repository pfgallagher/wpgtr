require 'open-uri'

# URI.open( "http://preeventualist.org/lost" ) do |lost|
#   puts lost.read
# end

# Reading from internet
# URI.open( "http://preeventualist.org/lost/searchfound?q=truck" ) do |truck|
#   puts truck.read
# end

# Local reading
# open( "folder/idea-about-hiding-lettuce-in-the-church-chairs.txt" ) do |idea|
#   puts idea.read
# end

# URI.open( "http://your.com/idea-about-hiding-lettuce-in-the-church-chairs.txt" ) do |idea|
#   puts idea.read
# end

# Apparently also works for FTP... probably won't be very useful nowadays :D 

# URI.open( "http://preeventualist.org/lost/searchfound?q=truck" ) do |truck|
#   # Loads each line individually; helps with memory
#   truck.each_line do |line|
#     puts line if line['pickup']
#   end
# end

# class IO
#   # Definition for the each_line method.  Notice how it has no
#   # argument list.  Blocks don't need to be listed as arguments.
#   def each_line
#     until eof?        # until we reach the end of the file...
#       yield readline  # pass a line into the block
#     end
#   end
# end

# def yield_thrice
#   yield
#   yield
#   yield
# end

# a = ['first, birth.', 'then, a life of flickering images.', 'and, finally, the end.']

# yield_thrice { puts a.shift }

# The brief style of attaching a block to a method.
# Here the block is surrounded with curly braces.
# open( "idea.txt" ) { |f| f.read }

# The verbose style of attaching a block to a method.
# Here the block is surrounded with `do' and `end'
# open( "idea.txt" ) do |f|
#   f.read
# end

# The method opens two files and slides the resulting IO objects down the
# chute to an attached block.
def double_open filename1, filename2
  open( filename1 ) do |f1|
    open( filename2 ) do |f2|
      yield f1, f2
    end
  end
end

# Prints the files out side-by-side.
# double_open( "idea1.txt", "idea2.txt" ) do |f1, f2|
#   puts f1.readline + " | " + f2.readline
# end

require_relative './preeventualist'

# puts PreEventualist.search( 'Ruby skills' )



# puts PreEventualist.addfound( 'Why', 'Ruby skills', 'Wixl park',
#        "I can give you Ruby skills!\nCome visit poignantguide.net!" )

require_relative './dwemthy'
require_relative './rabbit'


# class Dragon < Creature
#   life 1340     # tough scales
#   strength 451  # bristling veins
#   charisma 1020 # toothy smile
#   weapon 939    # fire breath
# end

class ScubaArgentine < Creature
  life 46
  strength 35
  charisma 91
  weapon 2
end

class IndustrialRaverMonkey < Creature
  life 46
  strength 35
  charisma 91
  weapon 2
end

class DwarvenAngel < Creature
  life 540
  strength 6
  charisma 144
  weapon 50
end

class AssistantViceTentacleAndOmbudsman < Creature
  life 320
  strength 6
  charisma 144
  weapon 50
end

class TeethDeer < Creature
  life 655
  strength 192
  charisma 19
  weapon 109
end

class IntrepidDecomposedCyclist < Creature
  life 901
  strength 560
  charisma 422
  weapon 105
end

class Dragon < Creature
  life 1340     # tough scales
  strength 451  # bristling veins
  charisma 1020 # toothy smile
  weapon 939    # fire breath
end

dwary = DwemthysArray[IndustrialRaverMonkey.new,
                      DwarvenAngel.new,
                      AssistantViceTentacleAndOmbudsman.new,
                      TeethDeer.new,
                      IntrepidDecomposedCyclist.new,
                      Dragon.new]

# drgn = Dragon.new
# # is identical to...
# drgn = eval( "Dragon.new" )
# # or, alternatively...
# eval( "drgn = Dragon.new" )

# print "What monster class have you come to battle? "
# monster_class = gets
# monster = eval( monster_class + ".new" )
# p monster

# The instance_eval method runs code as if it were run inside an
# object's instance method.
# irb> drgn = Dragon.new
# irb> drgn.instance_eval do
# irb>   @name = "Tobias" 
# irb> end

# irb> drgn.instance_variable_get( "@name" )
#   => "Tobias" 

# The class_eval method runs code is if inside a class definition.
# irb> Dragon.class_eval do
# irb>   def name; @name; end
# irb> end

# irb> drgn.name
#   => "Tobias"

# Simple repl
# loop do
#   print ">> "
#   puts  "=> " + eval( gets ).inspect
# end

class NameCaller
  def method_missing( name, *args )
    puts "You're calling `#{name}' and you say:"
    args.each { |say| puts "  " + say }
    puts "But no one is there yet."
  end
  def deirdre( *args )
    puts "Deirdre is right here and you say:"
    args.each { |say| puts "  " + say }
    puts "And she loves every second of it."
    puts "(I think she thinks you're poetic.)"
  end
end

NameCaller.new.deirdre 'hello'
NameCaller.new.simon 'hello'

# The %s format is for placing full strings.
# irb> "Seats are taken by %s and %s." % ['a frog', 'a frog with teeth']
#   => "Seats are taken by a frog and a frog with teeth." 

# The %d format is for placing numbers, while the %f format is for
# floats (decimal numbers).
# irb> frogs = [44, 162.30]
# irb> stats = "Frogs have filled %d seats and paid %f blue crystals." 
# irb> stats % frogs
#   => "Frogs have filled 44 seats and paid 162.30 blue crystals." 

# Formatting is flexible with types, you can pass in strings
# and format them like numbers.
# irb> frogs = ['44', '162.30']
# irb> stats % frogs
#   => "Frogs have filled 44 seats and paid 162.30 blue crystals."

# See, here's the String#% method called like other methods.
# irb> "Please move over, %s.".%( 'toothless frog' )
#   => "Please move over, toothless frog" 

# Now let's call it the prettier way, with the percent sign
# right between the string and the array.
# irb> "Here is your 1098 statement for the year, %s." % ['teeth frog']
#   => "Here is your 1098 statement for the year, teeth frog."

# irb> "This bus has %1$d more stops before %2$d o'clock.  That's %1$d more stops." % [16, 8]
#   => "This bus has 16 more stops before 8 o'clock.  That's 16 more stops."

## Give one item 30 characters of width
# irb> "In the back of the bus: %30s." % ['frogs']
#   => "In the back of the bus:                          frogs." 

# Give one left-justified item 30 characters of width
# irb> "At the front of the bus: %-30s." % ['frogs']
  # => "At the front of the bus: frogs                         ."

#   irb> cat = "Blix"
# irb> puts "Does #{ cat } see what's up?  Is #{ cat } aware??"
#   => "Does Blix see what's up?  Is Blix aware??"

# irb> blix_went = :north
# irb> puts "Blix didn't speak, he ducked off to the #{ blix_went } through #{
#             if blix_went == :north
#               'a poorly laid avenue behind the paint store'
#             elsif blix_went == :south
#               'the circuitry of apartment buildings'
#             else
#               '... well, who knows where he went.'
#             end }.  But before we follow them..." 
# => "Blix didn't speak, he ducked off to the north through a poorly laid avenue
#     behind the paint store.  But before we follow them..."


# all directories where Ruby will search when you try to load a file with require
# irb> $:
#   => ["/usr/lib/ruby/site_ruby/1.8", "/usr/lib/ruby/site_ruby/1.8/i686-linux",
#       "/usr/lib/ruby/site_ruby", "/usr/lib/ruby/1.8",
#       "/usr/lib/ruby/1.8/i686-linux"]

# irb> $"      # The $" variable contains all files which have been loaded with `require'
  # => ["irb.rb", "e2mmap.rb", "irb/init.rb", ... "rbconfig.rb"]
             # These files are stored somewhere else, but their code is being used
             # in this program.  Much like quoting someone else's work -- these are the
             # footnotes -- hence the double-quote.

# irb> $0      # The $0 variable contains the running program's filename.
  # => "irb"   # A zero can be considered the beginning of a number count.
             # This variable answers the question, "Where did this program begin?" 

# irb> $*      # The $* variable contains all the arguments passed into a program.
  # => ['--prompt', 'simple']
             # This one is easy to remember, if you remember that Ruby methods
             # also use the asterisk to capture arguments into an array.

# The $! contains the current exception raised.
# The exclamation indicates a state of alarm.  An exception!
# irb> begin
# irb>   raise TypeError, "I don't believe this information." 
# irb> rescue
# irb>   p $!
# irb> end
  # => #<TypeError: I don't believe this information.>

# The $@ contains the current backtrace, if an exception was raised.
# The backtrace shows were Ruby was _at_ when the exception fired.
# irb> begin
# irb>   raise TypeError, "I don't believe this information." 
# irb> rescue
# irb>   p $@
# irb> end
#   => ["(irb):25:in `irb_binding'", "/usr/lib/ruby/1.8/irb/workspace.rb:52:in `irb_binding'", 
#       "/usr/lib/ruby/1.8/irb/workspace.rb:52"]

# irb> $/      # The $/ is the line separator, it is normally set to \n, which represents _Enter_
#   => "\n"    # or "end of line".  The slash represents a sword slashing lines in a file.

# The line separator controls how methods like each_line or readlines breaks up strings.
# irb> "Jeff,Jerry,Jill\nMichael,Mary,Myrtle".each_line { |names| p names }
#   => "Jeff,Jerry,Jill\n" 
#   => "Michael,Mary,Myrtle" 

# If you change the line separator, you change how many methods work, such as each_line.
# See what happens when I change the line separator to a comma.
# irb> $/ = ','
# irb> "Jeff,Jerry,Jill\nMichael,Mary,Myrtle".each_line { |names| p names }
#   => "Jeff," 
#   => "Jerry," 
#   => "Jill\nMichael," 
#   => "Mary," 
#   => "Myrtle" 

# irb> $,     # The $, variable is the join separator, used when joining strings with
#   => nil    # Array#join or Kernel::print.  The comma is a common join character.

# The join separator is normally empty.
# irb> ['candle', 'soup', 'mackarel'].join
#   => "candlesoupmackarel" 
# irb> $, = ' * '; ['candle', 'soup', 'mackarel'].join
#   => "candle * soup * mackarel" 

# But, usually, you won't need the global variable.
# irb> ['candle', 'soup', 'mackarel'].join ' # '
#   => "candle # soup # mackarel" 

# irb> $;     # The $; variable is the split separator, used when splitting strings
#   => nil    # with String#split.

# The split separator is normally empty, which means String#split will separate
# the string where there is whitespace.
# irb> "candle  soup\nmackarel".split
#   => ["candle", "soup", "mackarel"]
# irb> $; = 'a'; "candle  soup\nmackarel".split
#   => ["c", "ndle  soup\nm", "ck", "rel"]

# But, usually, you won't need the global variable.
# irb> "candle # soup # mackarel".split ' # '
#   => ['candle', 'soup', 'mackarel']

# irb> bats = %w{The Winged Scroll Carriers}
#   => ['The', 'Winged', 'Scroll', 'Carriers']

# irb> %w{ruby --help}
#   => ["ruby", "--help"]
# irb> %x{ruby --help}
#   => "Usage: ruby [switches] [--] [programfile] [arguments] ..."

m = "bats!"
eval %(
  def #{ m }
    puts "{" * 100
  end
)

# irb> tree = [:berry, :berry, :berry]
#   => [:berry, :berry, :berry]
# irb> treechild = tree.clone
#   => [:berry, :berry, :berry]

# irb> treechild << 'flower'
#   => [:berry, :berry, :berry, 'flower']
# irb> tree
#   => [:berry, :berry, :berry]


# dup and clone act differently
# irb> o = Object.new
# irb> class << o
# irb>   def nevermore; :nevermore; end
# irb> end

# irb> o.clone.nevermore
#   => :nevermore
# irb> o.dup.nevermore
# NoMethodError: undefined method `nevermore' for #<Object:0xb7d4a484>
#         from (irb):7

# loop do
#   print "Enter your password: "
#   password = gets
#   if password.match( /^\w{8,15}$/ )
#     break
#   else
#     puts "** Bad password! Must be 8 to 15 characters!"
#   end
# end

# PreEventualist.searchfound( 'truck' ) do |page|
#   page.each_line do |line|
#     puts line if line.match( /truck/ )
#   end
# end

# =~ is the match operator
#"The number is (909) 375-4434" =~ /[(]\d{3}[)]\s*\d{3}-\d{4}/

#  Using =~ and $& together.
# irb> "The number is (909) 375-4434" =~ /[(]\d{3}[)]\s*\d{3}-\d{4}/
#   => 14
# irb> $&
#   => "(909) 375-4434" 

# Using the MatchData object.
# irb> phone = /[(]\d{3}[)]\s*\d{3}-\d{4}/.match("The number is (909) 375-4434")     
#   => #<MatchData:0xb7d51680>
# irb> phone.to_s
#   => "(909) 375-4434"

# irb> song = "I swiped your cat / And I stole your cathodes" 
# irb> song.gsub 'cat', 'banjo'
#   => "I swiped your banjo / And I stole your banjohodes" 

# irb> song.gsub /\bcat\b/, 'banjo'
#   => "I swiped your banjo / And I stole your cathodes"