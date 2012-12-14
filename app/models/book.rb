class Book < ActiveRecord::Base
   validates_presence_of :title

   has_many :chapters
end
