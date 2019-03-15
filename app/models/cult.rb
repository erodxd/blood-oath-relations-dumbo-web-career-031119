class Cult

    @@ALL = []

    attr_reader :name, :city, :founding_year, :slogan

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@ALL << self
    end

    def recruit_follower(follower)
        followers << follower
    end

    def cult_population
        
    end

    def self.all
        @@ALL
    end

    def self.find_by_name(cult_name)
        @@ALL.find do |cult|
            cult.name == cult_name
        end
    end

    def self.find_by_location

    end

    def self.find_by_founding_year

    end
end