class Emotion < ActiveRecord::Base
  include GuidPrimaryKey

  validates_presence_of :name
  validates_uniqueness_of :name
end
