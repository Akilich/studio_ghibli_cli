#CLI Generator Controller

class StudioGhibliCli::CLI
  
  def call
    puts "Studio Ghibli Movie Generator - Select a Film Year to Start"
    list_film_years
  end
  
  def list_film_years
    year_array = [1984, 1986, 1988, 1989, 1991, 1992, 1993, 1994, 1995, 1997, 1999, 2000, 2001, 2002, 2004, 2006, 2008, 
		2009, 2010, 2011, 2013, 2014, 2018]
	end
  
end