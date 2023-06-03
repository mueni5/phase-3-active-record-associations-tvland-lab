class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
  
    belongs_to :network
  
    def actors_list
      self.actors.collect do |char|
          "#{char.first_name} #{char.last_name}"
      end.join
    end
  
end