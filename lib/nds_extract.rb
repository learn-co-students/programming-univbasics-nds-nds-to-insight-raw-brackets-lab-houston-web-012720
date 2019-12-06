$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
index = 0

while index < directors_database.length do
  
  name = directors_database[index][:name]
  movies = directors_database[index][:movies]
  
  new_index = 0
  total = 0
  
  while new_index < movies.length do
    gross_amt = movies[new_index][:worldwide_gross]
    total += gross_amt
  new_index += 1
  end
  result[name] = total
  index += 1
  end
 result
end
