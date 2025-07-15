require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  food_names = spicy_foods.map{|food| food[:name]}
  food_names
end

def spiciest_foods(spicy_foods)
  super_spicy_foods = spicy_foods.select{|food| food[:heat_level] > 5}
  super_spicy_foods
end

def print_spicy_foods(spicy_foods)
  print_food = spicy_foods.map{ |food|
    "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶' * food[:heat_level]}"}
  puts print_food
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  selected_food = spicy_foods.find{|food| food[:cuisine] == cuisine}
  selected_food
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  sorted_food = spicy_foods.sort_by { |food| food[:heat_level] }
  sorted_food
end

def print_spiciest_foods(spicy_foods)
  super_spicy_foods = spicy_foods.select { |food| food[:heat_level] > 5 }

  print_super_spicy_foods = super_spicy_foods.map { |food|
    "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶' * food[:heat_level]}"
  }
  puts print_super_spicy_foods
end


def average_heat_level(spicy_foods)
  avg_heat = spicy_foods.map { |foods| foods[:heat_level] }.sum / spicy_foods.length
end
