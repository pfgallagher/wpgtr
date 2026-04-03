blue_crystal = 1
leaf_tender = 5

# starmonkey = ratchet.attach( captive_monkey, pipe.catch_a_star ) + deco_hand_frog

plastic_cup = nil
glass_cup = nil

if plastic_cup
  print "Plastic cup is on the up 'n' up!"
end

unless plastic_cup
  print "Plastic cup is on the down low."
end

print "Yeah, plastic cup is up again!" if plastic_cup
print "Hardly. It's down." unless plastic_cup

print "We're using plastic 'cause we don't have glass." if plastic_cup unless glass_cup

approaching_guy = true

if approaching_guy == true
 print "That necklace is classic."
end

if approaching_guy == false
  print "Get in here, you conniving devil."
end

# Comparison operators are just methods
approaching_guy.==( true )

if nil.==( true )
  print "This will never see realization."
end

at_hotel = true
email = if at_hotel
          "why@hotelambrose.com"
        else
          "why@drnhowardcham.com"
        end

# << is the append operator
email = if at_hotel
  address = "why"
  address << "@hotelambrose"
  address << ".com"
end

print email

print( if at_hotel.nil?
         "No clue if he's in the hotel."
       elsif at_hotel == true
         "Definitely in."
       elsif at_hotel == false
         "He's out."
       else
         "The system is on the freee-itz."
       end )

print "Type and be diabolical: "
# idea_backwards = gets.reverse
idea_backwards = gets.upcase.reverse

CODE_WORDS = {
  'starmonkeys' => 'Phil and Pete, those prickly chancellors of the New Reich',
  'catapult' => 'chucky go-go', 'firebomb' => 'Heat-Assisted Living',
  'Nigeria' => "Ny and Jerry's Dry Cleaning (with Donuts)",
  'Put the kibosh on' => 'Put the cable box on'
}

# Even index brackets are a method
CODE_WORDS.[]( 'catapult' )

# require_relative 'wordlist'

# # Get evil idea and swap in code words
# print "Enter your new idea: " 
# idea = gets
# CODE_WORDS.each do |real, code| 
#   idea.gsub!( real, code )
# end

# Save the jibberish to a new file
# print "File encoded.  Please enter a name for this idea: " 
# idea_name = gets.strip
# File::open( "idea-" + idea_name + ".txt", "w" ) do |f|
#   f << idea
# end

# gsub - global substitution; find and replace, basically. The ! represents to mutate idea directly. It's "destructive "
 
# print is actually just a method on the kernel
Kernel::print( "55,000 Starmonkey Salute!" )

# require_relative 'wordlist'

# Print each idea out with the words fixed
# Dir['idea-*.txt'].each do |file_name|
#   idea = File.read( file_name )
#   CODE_WORDS.each do |real, code|
#     idea.gsub!( code, real )
#   end
#   puts idea
# end

# p is like print but works for anything
# p Dir['idea-*.txt']


# p File::methods

# This is creating an array of hashes
# The plus operator concatenates the arrays into a single array
kitty_toys =
  [:shape => 'sock', :fabric => 'cashmere'] +
  [:shape => 'mouse', :fabric => 'calico'] +
  [:shape => 'eggroll', :fabric => 'chenille']
kitty_toys.sort_by { |toy| toy[:fabric] }
p kitty_toys

kitty_toys.sort_by { |toy| toy[:shape] }.each do |toy|
  puts "Blixy has a #{ toy[:shape] } made of #{ toy[:fabric] }"
end

# next keyword
non_eggroll = 0
kitty_toys.each do |toy|
  next if toy[:shape] == 'eggroll'
  non_eggroll = non_eggroll + 1
end

# break keyword
kitty_toys.each do |toy|
  break if toy[:fabric] == 'chenille'
  p toy
end