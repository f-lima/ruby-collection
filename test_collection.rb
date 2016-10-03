require "/Users/flima/Documents/My Apps/GitHub/ruby-collection/fllist.rb"
require "/Users/flima/Documents/My Apps/GitHub/ruby-collection/flset.rb"

# test1 of FLList1
lt = FLList.new()
puts "1| " + lt.isEmpty.to_s
puts "2| " + lt.to_a.to_s
lt.insert(1)
puts "3| " + lt.isEmpty.to_s
lt.insert(2)
lt.insert(3)
puts "4| " + lt.contains(2).to_s
puts "5| " + lt.contains(4).to_s
puts "6| " + lt.to_a.to_s
lt.insertAt(0, 0)
puts "7| " + lt.to_a.to_s
lt.remove(2)
puts "8| " + lt.to_a.to_s
lt.removeAt(1)
puts "9| " + lt.to_a.to_s
puts
puts

# test1 of FLSet
st1 = FLSet.new
puts "1| " + st1.isEmpty.to_s
puts "2| " + st1.to_a.to_s
st1.insert(1)
puts "3| " + st1.isEmpty.to_s
st1.insert(2)
st1.insert(3)
puts "4| " + st1.contains(2).to_s
puts "5| " + st1.contains(4).to_s
puts "6| " + st1.to_a.to_s
st1.remove(2)
puts "7| " + st1.to_a.to_s
st2 = FLSet.new()
st2.insert(2)
st2.insert(3)
st2.insert(4)
puts "8| " + st2.to_a.to_s
puts "9| " + st1.subtract(st2).to_a.to_s
puts "A| " + st1.intersect(st2).to_a.to_s
puts "B| " + st1.union(st2).to_a.to_s
puts "C| " + st1.exclusiveOr(st2).to_a.to_s
