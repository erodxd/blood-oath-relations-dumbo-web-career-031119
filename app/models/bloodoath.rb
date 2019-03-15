class BloodOath
    
    @@ALL = []
    attr_reader :follower, :cult

    def initialize(year, month, day, follower, cult_name)
        @year = year
        @month = month
        @day = day
        @@ALL << self
        ##recrit flwr(follower)
    end

    def initiation_date
        "#{year}-#{month}-#{day}"
    end

    def self.get_oath_by_follower

    end

    def self.get_oath_by_
end