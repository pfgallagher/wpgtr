5.times { print "Odelay!" }

exit unless "restaurant".include? "aura"

['toast', 'cheese', 'wine'].each {
    |food| print food.capitalize 
}

orphan_fee = 100
teddy_bear_fee = 121.08
gratuity = 10

total = orphan_fee + teddy_bear_fee + gratuity

puts total

population = 12_000_000_000

an_int = 1

a_float = 3.14

another_float = -808.08

scientific_notation = 12.043e-04

avril_quote = "I'm a lot wiser.  Now I know
what the business is like -- what you have
to do and how to work it."

print avril_quote

:symbol

EmpireStateBuilding = "350 5th Avenue, NYC, NY"

ChunkyBacon = "Chunky Bacon"

# front_door.open
# front_door.open.close
# front_door.is_open?
# front_door.paint( 3, :red )
# front_door.paint( 3, :red ).dry( 30 ).close()

print "See, no dot."

# Door::new( :oak )

$x = "global"

@y = "instance variable"

# @@x = "class variable"

2.times {
  print "Yes, I've used chunky bacon in my examples, but never again!"
  print "This is a block"
}

# while(true) loop?
# loop do
#   print "Much better."
#   print "Ah.  More space!"
#   print "My back was killin' me in those crab pincers."
# end

# block arguments
# { |x,y| x + y }

# Ranges
(1..3) # 1 through 3
(0...5) # 0 through 4 (last val excluded)

# Arrays
[1, 2, 3]
['coat', 'mittens', 'snowboard']

# Hashes
{'a' => 'aardvark', 'b' => 'badger'}
# Note: this syntax is kinda ugly but apparently you can just do JSON style now
{
  a: 'aardvark',
}

# Regex
/ruby/
/^\d{3}-\d{3}-\d{4}/

require 'net/http'
Net::HTTP.start( 'www.ruby-lang.org', 80 ) do |http|
  print( http.get( '/en/about/license.txt' ).body )
end