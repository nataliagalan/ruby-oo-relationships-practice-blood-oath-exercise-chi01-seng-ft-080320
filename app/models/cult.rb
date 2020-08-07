class Cult
   # returns a String that is the cult's name
   attr_accessor :name, :location, :founding_year, :slogan

   @@all = []

  

   def initialize(name, location, founding_year, slogan)
       @name = name
       @location = location
       @founding_year = founding_year
       @slogan = slogan
        
       @@all << self

   end

   def self.all
    @@all
   end

   # adds a follower to this cult's list of followers
   def recruit_follower(follower_instance)
        
   end

   # example
    Follower.all.select do |follower_instance| 
    follower_instance.age >= self.all[0].age
    end

    # returns an Integer that is the number of followers in this cult
    def cult_population
        @@followers_list
    end

end # of Cult class


