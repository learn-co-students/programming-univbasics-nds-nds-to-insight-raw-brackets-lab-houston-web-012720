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
  while index < nds.count do 

    
    movies_array = nds[index][:movies]
    names = nds[index][:name]
    
    element_index = 0 
    worldwide_gross = 0
    
    while element_index < movies_array.count do 
      
      worldwide_gross += movies_array[element_index][:worldwide_gross]
      element_index += 1
    end

  
  
    result[names]= worldwide_gross
    index += 1 
 end

result

end
