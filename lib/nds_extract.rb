$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def testprint
  directors_totals(directors_database)
end

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  counter = 0
  while nds[counter] do
    moviecounter = 0
    grand_total = 0
    while nds[counter][:movies][moviecounter] do
      grand_total += nds[counter][:movies][moviecounter][:worldwide_gross]
      moviecounter += 1
    end
    result[nds[counter][:name]] =grand_total
    counter += 1
  end
  result
end
