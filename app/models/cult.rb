class Cult

   attr_accessor :name, :location, :founding_year, :slogan

   @@all = []

    def initialize(name, location, founding_year, slogan)
       @name = name
       @location = location
       @founding_year = founding_year
       @slogan = slogan
        
       @@all << self
    end

   # adds a follower to this cult's list of followers
    def recruit_follower(follower_instance)
        # BloodOath is initialized with follower, cult 
        BloodOath.new(follower_instance, self)
    end

    # returns an Integer that is the number of followers in this cult
    def cult_population
        # ran the method on self
        # self = cult instance
        # get this cult's info (self)
        # iterate through all BloodOath instances
        # select matching BloodOath instances -> have same cult as self
        # access through bo1.cult or blood_oath_instance.cult == self
        # return number of matching BloodOath instances
        cult_population = BloodOath.all.select do |blood_oath_instance|
           blood_oath_instance.cult == self 
        end
        cult_population.count
    end

    # returns a Float that is the average age of this cult's followers
    def average_age
        # find this cult's (self) followers ages
        # add them up and divide by number of elements
        # return decimal
        ages = []
        follower_ages = BloodOath.all.select do |blood_oath_instance|
            blood_oath_instance.cult == self
        end
        follower_ages.map do |blood_oath_instance|
            ages << blood_oath_instance.follower.age.to_i
        end
        ages_sum = ages.inject {|sum, age| sum + age}
        ages_sum.to_f / ages.count
    end

    # prints out all of the mottos for this cult's followers
    def my_followers_mottos
        # self = cult instante / this cult
        # find this cult's (self) followers
        # iterate through all Blood Oaths
        # select matching self == blood_oath_instance.cult
        # iterate again to select mottos via blood_oath_instance.follower.life_motto
        # puts results
        cult_followers = BloodOath.all.select do |blood_oath_instance|
            blood_oath_instance.cult == self
        end
        cult_followers.select do |blood_oath_instance|
            puts blood_oath_instance.follower.life_motto
        end
    end


    def self.all
        @@all
    end

    # takes a String argument that is a name 
    # and returns a Cult instance whose name matches that argument
    def self.find_by_name(cult_name)
        self.all.find do |cult_instance|
            cult_instance.name == cult_name
        end
    end

    # takes a String argument that is a location 
    # and returns an Array of cults that are in that location
    def self.find_by_location(location)
        self.all.select do |cult_instance|
            cult_instance.location == location
        end
    end

    # takes an Integer argument that is a year 
    # and returns all of the cults founded in that year
    def self.find_by_founding_year(year)
        self.all.select do |cult_instance|
            cult_instance.founding_year == year
        end
    end

    # returns the Cult instance who has the least number of followers :(
    def self.least_popular
        # iterate through all Cult instances to access cult_population
        # compare each cult's populations
        # store the smallest value of cult_population
        # return corresponding Cult instance
        i = 999999999999999
        least_popular_cult = ''
        self.all.each do |cult_instance|
           if cult_instance.cult_population < i
            least_popular_cult = cult_instance
            i = cult_instance.cult_population
           end
        end
        least_popular_cult
    end

    # returns a String that is the location with the most cults
    def self.most_common_location
        # iterate through all Cult instances to access cult_location
        # use self.find_by_location(location) method
        # to get array with cults per location 
        # use .count to compare number of cults per location
        # find array with the most elements
        # return location String corresponding to that array
        i = 0
        self.all.each do |cult_instance|
            cult_location_array = self.find_by_location(cult_instance.location)
            if cult_location_array.count > i
                i = cult_location_array.count
                @most_common_location = cult_instance.location
            end
        end 
        @most_common_location
    end


 

end # of Cult class



