# welcome message
puts "Welcome to the custom desk pricing app."
puts "The base cost for a desk is $200."
puts "Anything over 750 sq feet is an extra $50."
puts "Mahogany is $150, Oak is $125 and pine is no extra charge."
puts "Add $30 for each drawer."
puts " "

# get length of desk
print 'Enter length of desk: '
 length = gets.chomp.to_i

# get width of desk
 print 'Enter width of desk (feet): '
 width = gets.chomp.to_i

 # calculate surface area
surface = length * width

 # base cost for desk
cost = 200

# is surface is more than 750 sq feet add $50
if surface >= 750
  cost += 50
end

loop do
  print 'Enter wood type (mahogany, oak or pine): '
  wood = gets.chomp

  if wood == 'mahogany'
      cost += 150
  elsif wood == 'oak'
      cost += 125
  elsif wood == 'pine'
    cost += 0
  else
    puts "You have not entered a valid type of wood, please start again."
  end
  break if (wood == 'mahogany' || wood == 'oak' || wood == 'pine')
  end

  print 'Enter the number of drawers: '

  drawers = gets.chomp.to_i

  cost += (drawers * 30)

  puts 'total cost is $' + cost.to_s
