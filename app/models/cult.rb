class Cult

    @@TIME = Time.new
    @@ALL = []

    attr_reader :name, :location, :founding_year, :slogan

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @follower_count = 0
        @@ALL << self
    end

    def recruit_follower(follower)
        BloodOath.new(@@TIME.year, @@TIME.month, @@TIME.day, follower, self)
    end

    def cult_population
        BloodOath.get_all_oath_by_cult(self).size
    end

    def self.all
        @@ALL
    end

    def self.find_by_name(cult_name)
        @@ALL.find do |cult|
            cult.name == cult_name
        end
    end

    
    def self.find_by_location(cult_location)
        @@ALL.select do |cults|
            cults.location == cult_location
        end
    end

    def self.find_by_founding_year(year)
        @@ALL.select do |cults|
            cults.founding_year == year
        end
    end
end