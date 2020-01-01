$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  # Be sure to return the result at the end!
  result = {}
  row = 0
  # for each director (each row) do 
  while row < directors_database.length do
    column = 0 
    total = 0
    #for each column under the movies key do 
    while column < directors_database[row][:movies].length do 
      #add the worldwide_gross value to the total 
      total += directors_database[row][:movies][column][:worldwide_gross]
      column += 1
    end
    #add a key of the directors name to the resuts hash and assign it the total 
    result[directors_database[row][:name]]=total
    row += 1
  end
  result
end
