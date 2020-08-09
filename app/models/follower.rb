class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    #returns an Array of this follower's cults
    def cults
        # ran the method on self (f1.cults)
        # self = follower instance
        # get this follower's info (self)
        # iterate through all BloodOath instances
        # select matching BloodOath instances -> have same follower as self
        # access through blood_oath_instance.follower == self 
        # return array of matching BloodOath instances
        follower_cults = BloodOath.all.select do |blood_oath_instance|
            blood_oath_instance.follower == self 
         end
         follower_cults.map do |blood_oath_instance|
            blood_oath_instance.cult
         end
    end

    # adds this follower to the cult's list of followers
    def join_cult(cult_instance)
        BloodOath.new(self, cult_instance, Time.now.to_s[0..10])
    end


    def self.all
        @@all
    end

    #  returns an Array of followers who are the given age or older
    def self.of_a_certain_age(age)
        self.all.select do |follower_instance| 
            follower_instance.age >= self.all[0].age
        end
    end

end #of Follower class