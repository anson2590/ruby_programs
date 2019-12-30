# stack.rb
#
# Using array as stack
#
# Combine use of push and pop
#
# =OUTPUT=
#
# $ruby1.9.1 stack.rb
# ["one", "two", "three"]
# three
# two
# one
# []  
#

stack = []

stack.push "one"
stack.push "two"
stack.push "three"

p stack

puts stack.pop
puts stack.pop
puts stack.pop

p stack