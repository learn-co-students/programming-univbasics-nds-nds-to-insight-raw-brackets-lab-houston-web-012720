$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  pp(directors_database)

  result = {
  }
  
  director_index = 0
  while director_index < directors_database.length do
    movie_index = 0
    total = 0
    while movie_index < directors_database[director_index][:movies].length do
      total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_name = directors_database[director_index][:name]
    result[director_name] = total
    director_index += 1
  end
    
  p result
  
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the total earnings for each movie
  
end
