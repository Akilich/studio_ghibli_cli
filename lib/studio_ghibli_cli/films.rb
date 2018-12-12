class Film
 
  attr_accessor :title, :release_date, :producer, :rt_score, :description
 
  @@all = []
 
  def initialize
    @@all << self
  end
 
  def self.all
    @@all
  end
 
  def self.reset_all
    @@all.clear
  end
 
end



  def initialize(film_hash)
    # @title = film_hash["title"]
    # @release_date = film_hash["release_date"]
    # @producer = film_hash["producer"]
    # @rt_score = film_hash["rt_score"]
    # @description = film_hash["description"]
    
    #iterate over each hash
    film_hash.each do |method, arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=", arg)
      end
    end
  end
end

Film.get_films.map do |film_hash|
  Film.new(film_hash)
end