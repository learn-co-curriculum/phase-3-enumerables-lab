require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map { |food| food[:name] }
end

def spiciest_foods(spicy_foods)
  spicy_foods.filter {|food| food[:heat_level] > 5 }
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find { |food| food[:cuisine] == cuisine}
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by { |food|  food[:heat_level]}
end

def print_spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods(spicy_foods))
end

def average_heat_level(spicy_foods)
  spicy_foods.sum { |food| food[:heat_level] } / spicy_foods.size
end
