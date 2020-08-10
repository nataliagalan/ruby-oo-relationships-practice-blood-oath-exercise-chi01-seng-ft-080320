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
f4 = Follower.new('Benny', '22', 'YOLO')
f5 = Follower.new('Perez', '38', 'never don\'t give up')
f6 = Follower.new('Lisa', '19', 'lemonade')
f7 = Follower.new('Sam', '25', 'discipline is freedom')
f8 = Follower.new('Paul', '26', 'nill')
f9 = Follower.new('Tom', '27', 'born free')
f10 = Follower.new('Sade', '55', 'USA')
f11 = Follower.new('Jimmy', '55', 'music is life')


# BLOODOATH INSTANCE follower, cult
bo1 = BloodOath.new(f6, cult1)
bo2 = BloodOath.new(f10, cult2)
bo3 = BloodOath.new(f2, cult1)
bo4 = BloodOath.new(f3, cult1)
bo5 = BloodOath.new(f1, cult3)
bo6 = BloodOath.new(f10, cult1)
bo7 = BloodOath.new(f4, cult3)
bo8 = BloodOath.new(f5, cult3)
bo9 = BloodOath.new(f6, cult3)
bo10 = BloodOath.new(f7, cult3)
bo11 = BloodOath.new(f8, cult3)
bo12 = BloodOath.new(f9, cult3)
bo13 = BloodOath.new(f10, cult3)
bo14 = BloodOath.new(f11, cult3)


# CULT INSTANCE METHOD TESTS 
# p cult2.founding_year
# p cult1.slogan
# p cult3.name
# p cult3.location
# p cult1.recruit_follower(f1)
# p cult3.cult_population
# p cult1.average_age
# p cult1.my_followers_mottos

# CULT CLASS METHOD TESTS
# p Cult.all
# p Cult.find_by_name('Osho')
# p Cult.find_by_location('California')
# p Cult.find_by_founding_year(2000)
# p Cult.least_popular
# p Cult.most_common_location

# BLOODOATH INSTANCE + CLASS METHOD TESTS
# p bo1.follower
# p bo2.cult 
# p bo4.init_date
# p BloodOath.all
# p BloodOath.first_oath

# FOLLOWER INSTANCE METHOD TESTS
# p f1.name
# p f2.age
# p f1.life_motto
# p f1.cults
# p f1.join_cult(cult1)
# p f3.join_cult(cult3)
# p f1.my_cults_slogans
# p f1.my_cults

# FOLLOWER CLASS METHOD TESTS
# p Follower.all
# p Follower.of_a_certain_age(33)
# p Follower.most_active_follower
# p Follower.top_ten


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


