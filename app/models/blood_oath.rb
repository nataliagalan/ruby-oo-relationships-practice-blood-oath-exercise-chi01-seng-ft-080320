class BloodOath
    
    attr_reader :follower, :cult, :init_date

    @@all = []

    def initialize(follower, cult)
        @follower = follower  # belongs to a follower
        @cult = cult # belongs to a cult
        @init_date = Time.now.to_s[0..9] # .to_s[0..9] transforms Time.now into string and returns the first 10 characters only

        @@all << self
    end


    def self.all
        @@all
    end

    # returns the Follower instance that made the very first blood oath
    def self.first_oath
        # find first element of all blood oaths array (self.all)
        # return corresponding Follower instance
        self.all[0].follower
    end


end #of BloodOaths class