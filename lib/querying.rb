def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM series
  JOIN books
  ON series.id = books.series_id
  GROUP BY books.year
  HAVING books.series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
  ORDER BY motto
  LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS 'value_occurance' 
  FROM characters GROUP BY species
  ORDER BY value_occurance DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series
  JOIN subgenres
  ON series.subgenre_id=subgenres.id
  JOIN authors
  ON authors.id= series.author_id
  ORDER BY series.author_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  JOIN characters
  ON series.id = characters.series_id
  GROUP by characters.series_id 
  HAVING characters.species='human'
  ORDER BY COUNT(characters.species) DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(characters.id) AS character_count FROM character_books
  JOIN characters
  ON character_books.character_id = characters.id
  JOIN books
  ON character_books.book_id = books.id
  GROUP BY characters.id 
  ORDER BY character_count DESC, characters.name"
end
