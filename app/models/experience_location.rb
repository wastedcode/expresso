class ExperienceLocation < ActiveRecord::Base
  include GuidPrimaryKey

  belongs_to :experience
  belongs_to :venue

  validates_presence_of :experience, :venue
end

