=begin
  tower of hanoi can be solved in 
     (2 to the power n)  - 1 steps => 2^n -1 
=end

def move(num_disks, start=0, target=1, using=2)
    if num_disks == 1
     @towers[target] << @towers[start].pop
      puts "Move disk from #{start} to #{target} : #{@towers}"
    else
      move(num_disks-1, start, using, target)
      move(1,           start, target, using)
      move(num_disks-1, using, target, start)
    end 
  end
   
  n = 5
  @towers = [[*1..n].reverse, [], []]
  move(n)