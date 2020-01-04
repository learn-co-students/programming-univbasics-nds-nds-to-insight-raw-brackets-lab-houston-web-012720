$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  dir_index = 0
  while dir_index < nds.length do
    result[(nds[dir_index][:name])] = 0
    movie_index = 0
    while movie_index < nds[dir_index][:movies].length do
      result[(nds[dir_index][:name])] += nds[dir_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    dir_index += 1
  end
  return result
end
