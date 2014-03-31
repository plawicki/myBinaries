class Bean < ActiveRecord::Base
	attr_default :lang, "ruby"
	def self.search(search, search2)
  		if search && search2
       		find(:all, :conditions => ['lang=? AND description LIKE ?', "#{search}","%#{search2}%"])
    	else
     		limit(0)
    	end
   	end
end
