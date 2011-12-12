class Target < ActiveRecord::Base
  has_many :links

	def link_sex
		if (self.sex == "M")
			return "n"
		else
			return "nne"
		end
	end

end
