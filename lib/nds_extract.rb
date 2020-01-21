$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  
  result = {}
  
  nds.length.times { |i|
    name = nds[i][:name]
    movies = nds[i][:movies]
    gross = 0
    
    movies.length.times { |j|
      movies_facts = movies[j]
      
      gross += movies_facts[:worldwide_gross]
    }
    
    result[name] = gross
  }
  
  return result
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
end

# pp directors_totals(directors_database)