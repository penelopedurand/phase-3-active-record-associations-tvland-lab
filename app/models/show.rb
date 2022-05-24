class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network 

  def actors_list
    #that returns an Array of the full names of each actor associated with a show. 
    actors.map do |actor|
        actor.full_name 
    end
  end 
end