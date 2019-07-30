def fight
  puts "Name of your hero"
  hero = gets.chomp
  puts ""
  puts "Name of your monster"
  monster = gets.chomp
  puts ""
  hero_health = 50
  monster_health = 50
  while hero_health > 0 && monster_health > 0
    roll = rand(20)
    if [1, 2].include?(roll)
      hero_health -= 5
      puts "Critical failure! #{hero} accidentally stabs self!"
    elsif (3..10).include?(roll)
      hero_health -= 0
      puts "#{hero} misses!!"
    elsif (11..18).include?(roll)
      monster_health -= 10
      puts "#{hero} hit #{monster}!!"
    elsif [19, 20].include?(roll)
      monster_health -= 20
      puts "#{hero} hit #{monster} for critical damange!!"
    end
  puts "#{hero} has #{hero_health} hitpoints left. #{monster} has #{monster_health} hitpoints left."
  end
  if hero_health <= 0
    puts "#{hero} has lost."
  end
  if monster_health <= 0
    puts "#{hero} defeated #{monster}. World is safe for another day."
  end
end 

fight