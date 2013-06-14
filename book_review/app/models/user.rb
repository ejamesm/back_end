class User < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :last_name
  has_many :reviews

	def is_teen?
		# if age > 12 && age < 19 # return true
		# else
		# return false
		# end
	age > 12 && age < 19 
	end

  def has_long_name?
    last_name.length + first_name.length > 10
  end

# note the reference to the class/model using self

  def self.all_long_name
    self.all.select do |user|
      user.has_long_name?
    end
  end



end
