require 'open-uri'

require_relative './films.rb'


class FilmScraper
  
  BASE_URL = "https://ghibliapi.herokuapp.com"
  
  def self.get_film
    data = open("https://ghibliapi.herokuapp.com/films")
    JSON.parse(data)
  end
end

def make_film
    self.get_film.each do |post|
      film = Film.new
      film.title = post.css("h2").text
      film.schedule = post.css(".date").text
      film.description = post.css("p").text
    end
  end
  
    def print_film
    self.make_film
    Film.all.each do |film|
      if film.title
        puts "Title: #{film.title}"
        puts "  Release Date: #{film.schedule}"
        puts "  Producer: #{film.producer}"
        puts "  Rotten Tomatoes Score: #{film.rt_score}"
        puts "  Description: #{film.description}"
      end
    end
  end
 