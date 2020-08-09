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
        # BloodOath is initialized with follower, cult, init_date
        # .to_s[0..10] transforms Time.now into string and returns the first 10 characters only 
        BloodOath.new(follower_instance, self, Time.now.to_s[0..10])
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

end # of Cult class



