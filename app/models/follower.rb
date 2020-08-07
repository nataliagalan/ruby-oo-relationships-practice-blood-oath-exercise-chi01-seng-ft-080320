class Follower

    attr_accessor :name, :age, :life_motto
    attr_reader :cult

    @@all = []
    @@cults_list = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end

    # adds this follower to the cult's list of followers
    def join_cult(cult_instance)
        @@cults_list << cult_instance
    end

    #returns an Array of this follower's cults
    def cults
         @@cults_list
    end

    #  returns an Array of followers who are the given age or older
    def self.of_a_certain_age(age)
        self.all.select do |follower_instance| 
            follower_instance.age >= self.all[0].age
        end
    end


end #of Follower class


