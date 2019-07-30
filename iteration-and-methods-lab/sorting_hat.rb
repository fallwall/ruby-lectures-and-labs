wizards = [
  {name: "Harry Potter", house: "Gryffindor"}, 
  {name: "Lord Voldomort", house: "Slytherin"}, 
  {name: "Cedric Diggory", house: "Hufflepuff"},
  {name: "Luna Lovegood", house: "Ravenclaw"},  
  {name: "Albus Dumbledor", house: "Gryffindor"}, 
  {name: "Merlin", house: "Slytherin"}, 
  {name: "Pomona Sprout", house: "HufflePuff"}, 
  {name: "Gilderoy Lockheart", house: "Ravenclaw"}, 
  {name: "Ron Weasley", house: "Gryffindor"}, 
  {name: "Severus Snape", house: "Slytherin"}, 
  {name: "Nymphadora Tonks", house: "Hufflepuff"}, 
  {name: "Padma Patil", house: "Ravenclaw"}, 
  {name: "Hermoine Granger", house: "Gryffindor"} 
 ]

def sorting_hat(wizards)
  gryffindor = Array.new
  slytherin = Array.new
  hufflepuff = Array.new
  ravenclaw = Array.new
  wizards.each do |wizard|
  if wizard[:house] == "Gryffindor"
  gryffindor.push(wizard[:name])
  elsif wizard[:house] == "Slytherin"
  slytherin.push(wizard[:name])
  elsif wizard[:house] == "Hufflepuff"
  hufflepuff.push(wizard[:name])
  else
  ravenclaw.push(wizard[:name])
  end
end
  puts "Gryffindor: " +"\n" + gryffindor.join("\n")
  puts "Slytherin: " + "\n" + slytherin.join("\n")
  puts "Hufflepuff: " + "\n" + hufflepuff.join("\n")
  puts "Ravenclaw:  " + "\n" + ravenclaw.join("\n")
end

sorting_hat(wizards)