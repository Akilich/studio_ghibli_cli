#CLI Generator Controller

class StudioGhibliCli::CLI
  
  def call
    welcome_message
    film_year_list
  end
  
  def welcome_message
    puts "Welcome to the Studio Ghibli Movie Generator"
  end
  
  def film_year_list
    puts <<-DOC
    Enter a film year from the list to generate a Studio Ghibli film:
      1984, 1986, 1988, 1989, 1991, 1992, 1993, 1994,
      1995, 1997, 1999, 2000, 2001, 2002, 2004, 2006,
      2008, 2009, 2010, 2011, 2013, 2014, 2018
    DOC
  end
end