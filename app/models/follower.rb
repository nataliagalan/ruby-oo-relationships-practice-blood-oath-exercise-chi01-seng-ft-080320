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
        BloodOath.new(self, cult_instance)
    end

    #prints out all of the slogans for this follower's cults
    def my_cults_slogans
        follower_cults = BloodOath.all.select do |blood_oath_instance|
            blood_oath_instance.follower == self
        end
        follower_cults.select do |blood_oath_instance|
            puts blood_oath_instance.cult.slogan
        end
    end

    # returns array with cults that a follower (self) has joined
    def my_cults
        follower_cults = BloodOath.all.select do |blood_oath_instance|
            blood_oath_instance.follower == self 
        end
        follower_cults.map do |blood_oath_instance|
            blood_oath_instance.cult 
        end
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

    # returns the Follower instance who has joined the most cults
    def self.most_active_follower
        i = 0
        most_active_follower = ''
        self.all.each do |follower_instance|
            if follower_instance.my_cults.count > i
                most_active_follower = follower_instance
                i = follower_instance.my_cults.count 
            end 
        end 
        most_active_follower
    end 

    # NEEDS FIXING returns an Array of followers; they are the ten most active followers
    def self.top_ten
        # use my_cults method and .count to determine number of cults per follower
        # use enumerable to sort by highest number of cults
        # return an array with the top 10 corresponding follower instances with the highest number of cults
            top_ten = self.all.sort_by do |follower_instance|
                follower_instance.my_cults.count
            end
        top_ten.reverse[0, 11]  
    end



end #of Follower class

