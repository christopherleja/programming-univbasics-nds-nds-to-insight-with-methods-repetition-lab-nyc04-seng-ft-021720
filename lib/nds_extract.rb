$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0
  
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
    
  end
  total
end

def list_of_directors(source)
list_index = 0
name_in_source = [] 
  while list_index < source.length do
   name_in_source.push(source[list_index][:name])
  list_index += 1
  end
  name_in_source
end

def total_gross(source)
  row_index = 0
  combined_gross = 0
  #data = directors_totals(source)
  #  puts data
    while row_index < source.length do
    director_name = list_of_directors(source)[row_index]
      combined_gross += directors_totals(source)[director_name]
      #puts combined_gross
  #end
    row_index += 1
  end
  combined_gross
  
  
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
end


