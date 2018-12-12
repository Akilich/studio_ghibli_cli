require_relative "./spec_helper"
require_relative "../studio_ghibli_cli/films.rb"

describe "Film" do 

  let(:film) {Film.new}

  context "instance methods" do 
    describe "#title" do 
      it "has a setter and a getter method for title" do 
        film.title = "Castle in the Sky"
        expect(film.title).to eq("Castle in the Sky")
      end
    end

    describe "#release_date" do 
      it "has a setter and a getter method for a film's release date" do 
        film.release_date = "1999"
        expect(film.release_date).to eq("1999")
      end
    end
    
    describe "#producer" do 
      it "has a setter and a getter method for a film's producer" do 
        film.producer = "Isao Takahata"
        expect(film.producer).to eq("Isao Takahata")
      end
    end

  describe "#rt_score" do 
      it "has a setter and a getter method for a film's rotten tomatoes score" do 
        film.rt_score = "95"
        expect(film.rt_score).to eq("95")
      end
    end

    describe "#description" do 
      it "has a setter and a getter method for a film's description" do 
        film.description = "The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and Pazu must outwit the evil Muska, who plans to use Laputa's science to make himself ruler of the world."
        expect(film.description).to eq("The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and Pazu must outwit the evil Muska, who plans to use Laputa's science to make himself ruler of the world.")
      end
    end
  end


  context "class methods" do 
    describe ".all" do 
      it "returns an array of all the instances of the Film class" do
        Film.reset_all
        course_one = Course.new
        course_two = Course.new
        course_three = Course.new 
        expect(Course.all).to match_array([course, course_one, course_two, course_three])
      end
    end
  end
end