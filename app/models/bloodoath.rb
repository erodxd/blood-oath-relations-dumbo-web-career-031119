class BloodOath
    
    @@ALL = []
    attr_reader :follower, :cult, :year, :month, :day

    def initialize(year, month, day, follower, cult)
        @year = year
        @month = month
        @day = day
        @cult = cult
        @follower = follower
        @@ALL << self
        ##recrit flwr(follower)
    end

    def initiation_date
        "#{year}-#{month}-#{day}"
    end

    def self.get_all_oaths_by_follower(follower)
        @@ALL.select do |oath|
            oath.follower == follower
        end
    end

    def self.get_all_oath_by_cult(cult)
        @@ALL.select do |oath|
            oath.cult == cult
        end
    end
end