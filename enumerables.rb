require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
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
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: " + "🌶" * food[:heat_level]
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    cuisine == (food[:cuisine])
  end
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort do |lowest, highest|
    lowest[:heat_level] - highest[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  spicy_foods.each do |display|  
  if display[:heat_level] > 5
  puts "#{display[:name]} (#{display[:cuisine]}) | Heat Level: " + "🌶" * display[:heat_level]
    end
  end
end

def average_heat_level(spicy_foods)
   average_heat = spicy_foods.sum do |food| food[:heat_level]
   end
    average_heat / spicy_foods.length
end
