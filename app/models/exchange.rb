class Exchange < ActiveRecord::Base
  belongs_to :country
  belongs_to :origin
end
