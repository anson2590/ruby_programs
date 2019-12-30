# queue.rb
#
# Using array as queue
#
# Combine use of push and shift
#
# =OUTPUT=
#
# $ ruby1.9.1 queue.rb
# ["one", "two", "three"]
# one
# two
# three
# [] 
#

queue = []

queue.push "one"
queue.push "two"
queue.push "three"

p queue

puts queue.shift
puts queue.shift
puts queue.shift

p queue