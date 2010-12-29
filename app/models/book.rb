class Book < ActiveRecord::Base
	has_many :users, :through => :checkouts
	acts_as_indexed :fields => [:description, :title, :author]	
end
