require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# tests below

# CULT INSTANCES name, location, founding_year, slogan
cult1 = Cult.new('Osho', 'California', 1980, 'One love')
cult2 = Cult.new('KKK', 'Worldwide', 1865, 'White Power')
cult3 = Cult.new('Superstar', 'California', 2000, 'We are star dust')

# FOLLOWER INSTANCES name, age, life_motto
f1 = Follower.new('Carmen', '33', 'Not my fault')
f2 = Follower.new('Bruce', '22', 'American')
f3 = Follower.new('Joe', '55', 'USA')

# BLOODOATH INSTANCE follower, cult, init_date
bo1 = BloodOath.new(f1, cult1, "2020-12-1")
bo2 = BloodOath.new(f1, cult2, "2019-12-1")
bo3 = BloodOath.new(f3, cult1, "2013-12-1")
bo4 = BloodOath.new(f3, cult1, "2011-12-1")

# CULT INSTANCE METHOD TESTS 
# p cult2.founding_year
# p cult1.slogan
# p cult3.name
# p cult3.location
# p cult1.recruit_follower(f1)
# p cult3.cult_population

# CULT CLASS METHOD TESTS
# p Cult.all
# p Cult.find_by_name('Osho')
# p Cult.find_by_location('California')
# p Cult.find_by_founding_year(2000)

# BLOODOATH INSTANCE + CLASS METHOD TESTS
# p bo1.follower
# p bo2.cult 
# p bo4.init_date
# p BloodOath.all.size

# FOLLOWER INSTANCE METHOD TESTS
# p f1.name
# p f2.age
# p f1.life_motto
# p f1.cults
# p f1.join_cult(cult1)
# p f3.join_cult(cult3)

# FOLLOWER CLASS METHOD TESTS
# p Follower.all
# p Follower.of_a_certain_age(33)


# binding.pry
# 0

# NOTES
# many-to-many Relationship
# BloodOaths.all is the joiner
# Cult -< BloodOaths >- Follower
# cult has many blood oaths
# Cult -< Follower
# cult has many followers, through blood oaths
# follower has many blood oaths
# follower has many cults, through blood oaths


