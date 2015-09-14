class Campaign < ActiveRecord::Base
  belongs_to :account
  include ActiveTry

end
