# # celeb_one_name = "britney spears"
# # celeb_one_age = 34

# # celeb_two_name = "aubrey graham"
# # celeb_two_age = 28


# celeb_one = {name: "britney spears", age: 34}
# celeb_two = {name: "aubrey graham", age: 28}
# # p celeb_one[:name]

# # p celeb_two[:age]

# # celebs = [celeb_one, celeb_two]


# # celebs.each do |celeb|
# #   celeb[:age] += 1
# # end

# celeb_one[:birthday] = Time.new(1981, 12, 2)
# # p celeb_one


# def get_age(birthday)
#   ((Time.now - birthday) / 60 / 60 / 24 / 365).to_i
# end

# p get_age(celeb_one[:birthday])


class Celeb
  attr_accessor :name, :birthday, :gender


  def initialize(name, birthday, gender)
    @name = name
    @birthday = birthday
    @gender = gender
  end

  # def name
  #   @name
  # end

  # def name=(arg)
  #   @name = arg
  # end

  # def birthday
  #   @birthday
  # end

  # def birthday=(arg)
  #   @birthday = arg
  # end

  def get_age
    ((Time.now - @birthday) / 60 / 60 / 24 / 365).to_i
  end
end


celeb = Celeb.new("Marvin", Time.new(1981, 12, 2), "Male")
celeb_two = Celeb.new("Mavis", Time.new(1980, 12, 2), "Female")
celeb_three = Celeb.new("Mack", Time.new(1991, 12, 2), "Male")


celebs = [celeb, celeb_two, celeb_three]




celebs.each do |celeb|
  puts "#{celeb.name}, and my age is:  #{celeb.get_age}"
end
