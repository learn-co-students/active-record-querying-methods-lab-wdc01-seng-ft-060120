class Show < ActiveRecord::Base
    
    def self.highest_rating
        top = Show.maximum(:rating)
        return top
    end

    def self.most_popular_show
        self.find_by(rating: self.highest_rating)
    end

    def self.lowest_rating
        bottom = Show.minimum(:rating)
        return bottom
    end

    def self.least_popular_show
        self.find_by(rating: self.lowest_rating)
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        self.order("name")
    end

end