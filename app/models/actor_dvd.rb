class ActorDvd < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :dvd 
end
