Reading Time Method Design Recipe

1. Describe the Problem
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

```ruby
reading_time = calc_reading_time(str)

# * reading_time is an integer representing minutes
```

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# 1
calc_reading_time("")
# => 0

# 2
calc_reading_time("one")
# => 1

# 3
calc_reading_time("two_hundred_words")
# => 1

# 4
calc_reading_time("three_hundred_words")
# => 2

# 5
calc_reading_time("four_hundred_words")
# => 2

# 6
calc_reading_time("five_thousand_words")
# => 25



4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
