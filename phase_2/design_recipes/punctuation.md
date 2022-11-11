Reading Time Method Design Recipe

1. Describe the Problem
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

```ruby
correct_punctuation = punctuation(str)

# * correct_punctuation is a boolean
```

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# 1
punctuation("")
# => "There is no string"

# 2
punctuation("This has correct punctuation.")
# => "Correct punctuation"

# 3
punctuation("this doesn't have correct punctuation.")
# => "Incorrect punctuation"

# 4
punctuation("This doesn't have correct punctuation")
# => "Incorrect punctuation"

# 5
punctuation("this doesn't have correct punctuation")
# => "Incorrect punctuation"

# 6
punctuation("This has correct punctuation!")
# => "Correct punctuation"



4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
