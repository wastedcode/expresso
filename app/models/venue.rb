class Venue < ActiveRecord::Base
  include GuidPrimaryKey

  validates_presence_of :name
end

