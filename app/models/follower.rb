class Follower

    @@ALL = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@ALL << self
    end

    def cults

    end

    def join_cult(cult)

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