class Show < ActiveRecord::Base
    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        highest_rated_movie = self.highest_rating 
        self.find_by(rating: highest_rated_movie)
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        lowerst_rated_movie = self.lowest_rating
        self.find_by(rating: lowerst_rated_movie)
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        # self.all.select do |movie|
        #     movie.rating > 5
        # end
        self.where('rating > ?', 5)
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end