class Group < ActiveRecord::Base
  belongs_to :campaign
  include ActiveTry

end
