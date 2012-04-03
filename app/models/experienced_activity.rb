class ExperiencedActivity < ActiveRecord::Base
  include GuidPrimaryKey

  belongs_to :experience
  belongs_to :activity

  validates_presence_of :experience, :activity
end

