# Enumerables Lab

## Learning Goals

- Practice using common enumerable methods like `#each`, `#map`, `#find`, and
  `#filter` with arrays

## Instructions

In the `enumerables.rb` file, there is an array of hashes representing different
spicy foods:

```rb
# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  ]
end
```

Practice using Ruby enumerable methods to solve these deliverables. You _could_
use `.each` to solve all of these, but try to expand your toolkit and use some
other enumerable methods to make the job easier, like `.map`, `.select`, and
`.find`.

Define a method `#get_names`, takes an array of `spicy_foods` and **returns an
array of strings** with the names of each spicy food.

```rb
get_names(spicy_foods)
# => ["Green Curry", "Buffalo Wings", "Mapo Tofu"]
```

Define a method `#spiciest_foods` that an array of `spicy_foods` and **returns
an array of hashes** where the heat level of the food is greater than 5.

```rb
spiciest_foods(spicy_foods)
# => [{ name: 'Green Curry', cuisine: 'Thai', heat_level: 9 }, { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }]
```

Define a method `#print_spicy_foods` that takes an array of `spicy_foods` and
**output to the terminal** each spicy food in the following format using
`#puts`: `Buffalo Wings (American) | Heat Level: 🌶🌶🌶`.

HINT: you can use [times (\*) with a string][string times] to produce the
correct number of 🌶 emoji (`"hello" * 3 == "hellohellohello"`).

```rb
print_spicy_foods(spicy_foods)
# Green Curry (Thai) | Heat Level: 🌶🌶🌶🌶🌶🌶🌶🌶🌶
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# Mapo Tofu (Sichuan) | Heat Level: 🌶🌶🌶🌶🌶🌶
```

[string times]: https://ruby-doc.org/core-2.7.3/String.html#method-i-2A

Define a method `get_spicy_food_by_cuisine` that takes an array of `spicy_foods`
and a string representing a `cuisine`, and **returns a single hash** for the
spicy food whose cuisine matches the cuisine being passed to the method.

```rb
get_spicy_food_by_cuisine(spicy_foods, "American")
# => { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 }

get_spicy_food_by_cuisine(spicy_foods, "Thai")
# => { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 }
```

Define a method `#sort_by_heat` that takes an array of `spicy_foods` and
**returns an array of hashes** sorted by heat level from lowest to highest:

```rb
sort_by_heat(spicy_foods)
# => [
#   { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
#   { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
#   { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 }
# ]
```

Define a method `print_spiciest_foods` that takes an array of `spicy_foods` and
**outputs to the terminal** ONLY the spicy foods that have a heat level greater
than 5, in the following format:
`Buffalo Wings (American) | Heat Level: 🌶🌶🌶`. Try to use methods you've
already written to solve this!

```rb
print_spiciest_foods(spicy_foods)
# Green Curry (Thai) | Heat Level: 🌶🌶🌶🌶🌶🌶🌶🌶🌶
# Mapo Tofu (Sichuan) | Heat Level: 🌶🌶🌶🌶🌶🌶
```

Define a method `average_heat_level` that takes an array of `spicy_foods` and
**returns an integer** representing the average heat level of all the spicy
foods in the array. Recall that to derive the average of a collection, you need
to calculate the total and divide number of elements in the collection.

**HINT**: you can solve this using `each`, or try the [sum method][] with a
block, to get the total spice level.

```rb
average_heat_level(spicy_foods)
# => 6
```

## Resources

- [Enumerable documentation][ruby docs enumerable]

[ruby docs enumerable]: https://ruby-doc.org/core-2.7.3/Enumerable.html
[sum method]: https://ruby-doc.org/core-2.7.3/Enumerable.html#method-i-sum
