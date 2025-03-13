# Hello Programming Language scriptimport random
import random

# This program greets the user with a random programming language.

programming_languages = [
    "Python", "JavaScript", "C++", "Java", "Ruby", "Go", "Swift", "Kotlin",
    "PHP", "C#", "Rust", "TypeScript", "Scala", "Dart", "Perl", "Haskell",
    "Lua", "Shell", "Lua", "Elixir", "Clojure", "F#"
]


# Display one random language from the list
def display_language():
    '''takes a list of strings and returns a random string from the list'''
    language = random.choice(programming_languages)
    return language
