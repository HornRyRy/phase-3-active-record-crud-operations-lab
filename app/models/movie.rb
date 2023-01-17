class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    ## CREATE
    def Movie.create_with_title(title)
        Movie.create(title:title)
    end

    def Movie.first_movie
        Movie.first
    end

    def Movie.last_movie
        Movie.last
    end

    def Movie.find_movie_with_id(id)
        Movie.find(id)
    end

    def Movie.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end

    def Movie.find_movies_after_2002()
        Movie.where("release_date > 2002")
    end
    
end