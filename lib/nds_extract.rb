#pp nds[1][:movies][1][:worldwide_gross]
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
director_index = 0  
result = {} 
while director_index < nds.length do 
  movie_index = 0
  grand_total = 0
    while movie_index < nds[director_index][:movies].length
      grand_total += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
  result[nds[director_index]] = grand_total
  director_index += 1
  end 
pp result
end
