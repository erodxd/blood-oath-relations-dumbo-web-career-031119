class Follower

    attr_reader :name, :age, :life_motto
    # @@TIME = Time.new
    @@ALL = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@ALL << self
    end

    def cults
        BloodOath.get_all_oaths_by_follower(self).map do |oath|
            oath.cult
        end
    end

    def join_cult(cult_to_be_joined)
        cult_to_be_joined.recruit_follower(self)
    end

    def self.all
        @@ALL
    end

    def self.of_a_certain_age(search_age = 0)
        @@ALL.select do |follower|
            follower.age >= search_age
        end
    end
end