class Show < ActiveRecord::Base
    def self.highest_rating
        return Show.maximum(:rating)
    end

    def self.most_popular_show
        return Show.where("rating = ?", self.highest_rating)[0]
    end

    def self.lowest_rating
        return Show.minimum(:rating)
    end

    def self.least_popular_show
        return Show.where("rating = ?", self.lowest_rating)[0]
    end

    def self.ratings_sum
        return Show.sum(:rating)
    end

    def self.popular_shows
        return Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        return Show.order("name ASC")
    end
end