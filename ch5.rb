def dr_chams_timeline( year )
  case year
  when 1894
    "Born."
  when 1895..1913
    "Childhood in Lousville, Winston Co., Mississippi."
  when 1914..1919
    "Worked at a pecan nursery; punched a Quaker."
  when 1920..1928
    "Sailed in the Brotherhood of River Wisdomming, which journeyed \
     the Mississippi River and engaged in thoughtful self-improvement, \
     where he finished 140 credit hours from their Oarniversity."
  when 1929
    "Returned to Louisville to pen a novel about time-travelling pheasant hunters."
  when 1930..1933
    "Took up a respectable career insuring pecan nurseries.  Financially stable, he \
     spent time in Brazil and New Mexico, buying up rare paper-shell pecan trees.  Just \
     as his notoriety came to a crescendo: gosh, he tried to buried himself alive."
  when 1934
    "Went back to writing his novel.  Changed the hunters to insurance tycoons and the \
     pheasants to Quakers."
  when 1935..1940
    "Took Arthur Cone, the Headmaster of the Brotherhood of River Wisdomming, as a \
     houseguest.  Together for five years, engineering and inventing."
  when 1941
    "And this is where things got interesting."
  else
  "No information about this year."
  end
end

puts dr_chams_timeline( 1941 )

# if 1894 === year
#   "Born."
# Note the triple equals here is less than double, it's true if the year is in the range
# elsif (1895..1913) === year
#   "Childhood in Lousville, Winston Co., Mississippi."
# else
#   "No information about this year."
# end

opus_magnum = true
def save_hannah
  # opus_magnum is not in scope, so it will throw an error
  # If it was a global, it would be in scope, though
  success = opus_magnum
end

verb = 'rescued'
['sedated', 'sprinkled', 'electrocuted'].
each do |verb|
  puts "Dr. Cham " + verb + " his niece Hannah."
end
puts "Finally, Dr. Cham " + verb + " his niece Hannah."

# ['sedated', 'powdered', 'electrocuted'].
# each do |verb|
#   puts "Dr. Cham " + verb + " his niece Hannah."
# end
# puts "Yes, Dr. Cham " + verb + " his niece Hannah."


# require 'endertromb'
class WishMaker
  def initialize
    # Instance variable scoped to class
    @energy = rand( 6 )
  end
  def grant( wish )
    if wish.length > 10 or wish.include? ' '
      raise ArgumentError, "Bad wish."
    end
    if @energy.zero?
      raise Exception, "No energy left."
    end
    @energy -= 1
    # Endertromb::make( wish )
  end
end

todays_wishes = WishMaker.new
todays_wishes.grant( "antlers" )

number = 5
print number.next                   # prints '6'

phrase = 'wishing for antlers'
print phrase.length                 # prints '19'

print 5.class                       # prints 'Integer'
print 'wishing for antlers'.class   # prints 'String'
print WishMaker.new.class           # prints 'WishMaker'

# require 'endertromb'
# class MindReader
#   def initialize
#     @minds = Endertromb::scan_for_sentience
#   end
#   def read
#     @minds.collect do |mind|
#        mind.read
#     end
#   end
# end

# irb> Object::constants

# irb> Elevator::methods
# several are built in to every class like method, freeze, allocate
# freeze prevents the class from being changed
# allocate makes a new object without calling initialize

# irb> Elevator::class_variables

# irb> Elevator::constants

# If you start a class definition and add a new definition, it gets appended to the existing class definition

# You usually call class methods with double colon. Periods work too, but double colons make it obvious.

class Elevator
  def initialize( pass )
    raise AccessDeniedError, "bad password" \
      unless pass.equals? @@maintenance_password
  end
end

# def wipe_mutterings_from( sentence )
#   while sentence.include? '('
#     open = sentence.index( '(' )
#     close = sentence.index( ')', open )
#     sentence[open..close] = '' if close
#   end
# end

# what_he_said = "But, strangely (em-pithy-dah),
#   I learned upon, played upon (pon-shoo) the
#   organs on my home (oth-rea) planet."
# wipe_mutterings_from( what_he_said )
# print what_he_said

def wipe_mutterings_from( sentence )
  # respond_to? is used to check if an object has a particular method, in this case, include?
  # You could also specify include? as a string, but symbol is more performant, apparently?
  unless sentence.respond_to? :include?
    raise ArgumentError,
      "cannot wipe mutterings from a #{ sentence.class }"
  end
  while sentence.include? '('
    open = sentence.index( '(' )
    close = sentence.index( ')', open )
    sentence[open..close] = '' if close
  end
end

# wipe_mutterings_from( 1 )

something_said = "A (gith) spaceship."
wipe_mutterings_from( something_said )
# Notice something_said is mutated
print something_said

# You could suffix the method with a ! to indicate it's destructive, or you could work upon a copy

# def wipe_mutterings_from( sentence )
#   unless sentence.respond_to? :include?
#     raise ArgumentError,
#       "cannot wipe mutterings from a #{ sentence.class }"
#   end
#   # Here we're copying the string with dup, which copies any object
#   sentence = sentence.dup
#   while sentence.include? '('
#     open = sentence.index( '(' )
#     close = sentence.index( ')', open )
#     sentence[open..close] = '' if close
#   end
#   sentence
# end

# x = 5
# x = x + 1
# # x now equals 6

# y = "Endertromb"
# y = y.length
# # y now equals 10

# z = :include?
# z = "a string".respond_to? z
# # z now equals true

# Some things like numbers, symbols, nil, bools can't be duped.

# str = "A string is a long shelf of letters and spaces."
# puts str[0]       # prints 'A'
# puts str[0..-1]   # prints 'A string is a long shelf of letters and spaces.'
# puts str[1..-2]   # prints ' string is a long shelf of letters and spaces'
# puts str[0, 3]    # prints 'A s'
# puts str['shelf'] # prints 'shelf'

# This hangs because the method doesn't know what to do without a closing parenthesis.
# muddy_stick = "Here's a ( curve."
# wipe_mutterings_from( muddy_stick )

def wipe_mutterings_from( sentence )
  unless sentence.respond_to? :gsub
    raise ArgumentError,
      "cannot wipe mutterings from a #{ sentence.class }"
  end
  sentence.gsub( /\([-\w]+\)/, '' )
end

# Casually modifying the built-in string class
class String

  # The parts of my daughter's organ
  # instructor's name.
  @@syllables = [
    { 'Paij' => 'Personal',
      'Gonk' => 'Business',
      'Blon' => 'Slave',
      'Stro' => 'Master',
      'Wert' => 'Father',
      'Onnn' => 'Mother' },
    { 'ree'  => 'AM',
      'plo'  => 'PM' }
  ]

  # A method to determine what a
  # certain name of his means.
  def name_significance
    parts = self.split( '-' )
    syllables = @@syllables.dup
    # collect is an array method similar to each, but basically map (actually I think it's an alias for map)
    signif = parts.collect do |p|
      syllables.shift[p]
    end
    signif.join( ' ' )
  end

end

print "Paij-ree".name_significance

# class String
#   def dash_split
#     # Self represents the object whose method you're calling
#     self.split( '-' )
#   end
# end

class String
  # Don't necessarily need to explicitly call self
  def dash_split; split( '-' ); end
end

print "Gonk-plo".dash_split

catsandtips = [0.12, 0.63, 0.09].collect { |catcost| catcost + ( catcost * 0.20 ) }

puts catsandtips

# < indicates inheritance, Object is the origin of everything.
class ToastyBear < Object; end

# Equivalent to the above, since it already inherits from Object
class ToastyBear; end


def mail_them_a_kit( address )
  unless address.is_a? Address
    raise ArgumentError, "No Address object found."
  end
  print address.formatted
end

# Override the base Array class with your own:
class ArrayMine < Array
  # Build a string from this array, formatting each entry
  # then joining them together.
  def join( sep = $,, format = "%s" )
    collect do |item|
      sprintf( format, item )
    end.join( sep )
  end
end

ArrayMine.superclass # => Array

rooms = ArrayMine[3, 4, 6]
print "We have " + rooms.join( ", ", "%d bed" ) + " rooms available."

# irb> Class.superclass
#   => Module
# irb> Kernel.class
#   => Module
# irb> Module.superclass
#   => Object
# irb> Object.superclass
#   => nil

# Modules can hold classes, constants, variables, etc.

# See, here is the module -- where else could our code possibly stay?
module WatchfulSaintAgnes

  # A CONSTANT is laying here by the doorway.  Fine.
  TOOTHLESS_MAN_WITH_FORK = ['man', 'fork', 'exposed gums']

  # A Class is eating, living well in the kitchen.
  class FatWaxyChild; end

  # A Method is hiding back in the banana closet, God knows why.
  def timid_foxfaced_girl; {'please' => 'i want an acorn please'}; end

end

# >> WatchfulSaintAgnes::TOOTHLESS_MAN_WITH_FORK
# => ["man", "fork", "exposed gums"]
# >> WatchfulSaintAgnes::FatWaxyChild.new
# => #<WatchfulSaintAgnes::FatWaxyChild:0xb7d2ad78>
# >> WatchfulSaintAgnes::instance_methods
# => ["timid_foxfaced_girl"]

# A module is not a class, so you can't call new on it.

# You can use extend to pull all the methods from a module into a class or object 

class TheTimeWarnerAolCitibankCaringAndLovingFacility; end
TheTimeWarnerAolCitibankCaringAndLovingFacility.extend WatchfulSaintAgnes
TheTimeWarnerAolCitibankCaringAndLovingFacility::instance_methods # => ["timid_foxfaced_girl"]

class LotteryTicket

  NUMERIC_RANGE = 1..25

  attr_reader :picks, :purchased
  # attr_reader above is equivalent to:
  # def picks; @picks; end
  # def purchased; @purchased; end
  # attributes are wrapper methods for instance variables which can be used outside of the class itself
  # attr_reader only adds a reader method


  # *picks means any arguments will be passed in as an array
  def initialize( *picks )
    if picks.length != 3
      raise ArgumentError, "three numbers must be picked"
    elsif picks.uniq.length != 3
      raise ArgumentError, "the three picks must be different numbers"
    elsif picks.detect { |p| not NUMERIC_RANGE === p }
      raise ArgumentError, "the three picks must be numbers between 1 and 25"
    end
    @picks = picks
    @purchased = Time.now
  end

end

ticket = LotteryTicket.new( rand( 25 ) + 1,
            rand( 25 ) + 1, rand( 25 ) + 1 )
p ticket.picks

# This is invalid; you can't change them from outside of the class:
# ticket.picks = [2, 6, 19]


class LotteryTicket
  def self.new_random
    new( rand( 25 ) + 1, rand( 25 ) + 1, rand( 25 ) + 1 )
  # rescue to handle errors, retry starts the method over. (In the case that there are dupes)
  rescue ArgumentError
    retry
  end
end

class LotteryDraw
  @@tickets = {}
  def LotteryDraw.buy( customer, *tickets )
    unless @@tickets.has_key?( customer )
      @@tickets[customer] = []
    end
    @@tickets[customer] += tickets
  end
end

LotteryDraw.buy 'Yal-dal-rip-sip',
    LotteryTicket.new( 12, 6, 19 ),
    LotteryTicket.new( 5, 1, 3 ),
    LotteryTicket.new( 24, 6, 8 )

class LotteryTicket
  def score( final )
    count = 0
    final.picks.each do |note|
      count +=1 if picks.include? note
    end
    count
  end
end

ticket = LotteryTicket.new( 2, 5, 19 )
winner = LotteryTicket.new( 4, 5, 19 )
print ticket.score( winner )

class << LotteryDraw
  def play
    final = LotteryTicket.new_random
    winners = {}
    @@tickets.each do |buyer, ticket_list|
      ticket_list.each do |ticket|
        score = ticket.score( final )
        next if score.zero?
        # ||= is sugar for: winners[buyer] = winners[buyer] || []
        winners[buyer] ||= []
        winners[buyer] << [ ticket, score ]
      end
    end
    @@tickets.clear
    winners
  end
end

# << is a concatenator - it allows you to alter the definition of an object.

# LotteryDraw.play.each do |winner, tickets|
# puts winner + "won on " + tickets.length + " ticket(s)!" 
# tickets.each do |ticket, score|
# puts "\t" + ticket.picks.join( ', ' ) + ": " + score
# end
# end

# class LotteryTicket
# If we do want a writer, too, we can use this:
#   attr_accessor :picks, :purchased
# end

# Equivalent to:
# class LotteryTicket
#   def picks;           @picks;            end
#   def picks=(var);     @picks = var;      end
#   def purchased;       @purchased;        end
#   def purchased=(var); @purchased = var;  end
# end

# There is also attr_writer

# These methods intercept outside assignment.

# You might want to add extra safeguards, though:

class SkatingContes
  def the_winner; @the_winner; end
  def the_winner=( name )
    unless name.respond_to? :to_str
      raise ArgumentError, "The winner's name must be a String,
        not a math problem or a list of names or any of that business."
    end
    @the_winner = name
  end
end

class AnimalLottoTicket

  # A list of valid notes.
  NOTES = [:Ab, :A, :Bb, :B, :C, :Db, :D, :Eb, :E, :F, :Gb, :G]

  # Stores the three picked notes and a purchase date.
  attr_reader :picks, :purchased

  # Creates a new ticket from three chosen notes.  The three notes
  # must be unique notes.
  def initialize( note1, note2, note3 )
    if [note1, note2, note3].uniq!
      raise ArgumentError, "the three picks must be different notes"
    elsif picks.detect { |p| not NOTES.include? p }
      raise ArgumentError, "the three picks must be notes in the chromatic scale."
    end
    @picks = picks
    @purchased = Time.now
  end

  # Score this ticket against the final draw.
  def score( final )
    count = 0
    final.picks.each do |note|
      count +=1 if picks.include? note
    end
    count
  end

  # Constructor to create a random AnimalLottoTicket
  def self.new_random
    new( NOTES[ rand( NOTES.length ) ], NOTES[ rand( NOTES.length ) ],
         NOTES[ rand( NOTES.length ) ] )
  rescue ArgumentError
    retry
  end

end

# Env info
require 'rbconfig'
puts RbConfig::CONFIG

# Loaded libraries with require
puts $"
# Directories ruby checks when you try to load a file with require
puts $:

# require 'endertromb'
module WishScanner
  def scan_for_a_wish
    wish = self.read.detect do |thought|
      thought.index( 'wish: ' ) == 0
    end
    wish.gsub( 'wish: ', '' )
  end
end

# require 'mindreader'
# class MindReader
#   # Mixes in WishScanner
#   # Need to make sure MindReader has a read method, though.
#   include WishScanner
# end

# require 'wishmaker'
# reader = MindReader.new
# wisher = WishMaker.new
# loop do
#   wish = reader.scan_for_a_wish
#   if wish
#     wisher.grant( wish )
#   end
# end
