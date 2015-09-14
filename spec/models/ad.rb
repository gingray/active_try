class Ad < ActiveRecord::Base
  belongs_to :group
  include ActiveTry

end
