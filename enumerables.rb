require 'pry'

def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map do |food|
    food[:name]
  end
end

def spiciest_foods(spicy_foods)
  spicy_foods.filter do |food|
    food[:heat_level] > 5
  end
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat = "🌶" * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end

def sort_by_heat(spicy_foods)
  sorted_array = spicy_foods.sort do |food1, food2|
    food1[:heat_level] <=> food2[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  filter_foods = spiciest_foods(spicy_foods)
  print_spicy_foods(filter_foods)
end

def average_heat_level(spicy_foods)
  heat_levels = spicy_foods.map do |food|
   food[:heat_level]
  end
    average_heat = heat_levels.sum / heat_levels.length
    average_heat
end
