require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# tests below

# Cult instances
cult1 = Cult.new('Osho', 'California', 1980, 'One love')
cult2 = Cult.new('KKK', 'Nebraska', 1865, 'White Power')

# Follower instances name, age, life_motto
f1 = Follower.new('Carmen', '33', 'Not my fault')
f2 = Follower.new('Bruce', '22', 'American')
f3 = Follower.new('Joe', '55', 'USA')

# cult1.location 
# cult2.founding_year
# cult1.slogan

# cult1.recruit_follower(f1)
# cult1.recruit_follower(f2)

# f1.join_cult(cult1)
p f3.join_cult(cult2)

# f1.cults
# Follower.all
# Follower.of_a_certain_age(33)

# p cult2.cult_population

# binding.pry

# "Mwahahaha!" # just in case pry is buggy and exits


# many-to-many
# # Cult >- BloodOaths -< Follower

# # Cult >-< Follower

# OshoCult has many followers

# followers can have many cults

# AlienSpecies -< Colony >- Planet