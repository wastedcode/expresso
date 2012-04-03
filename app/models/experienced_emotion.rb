class ExperiencedEmotion < ActiveRecord::Base
  include GuidPrimaryKey

  belongs_to :experience
  belongs_to :emotion

  validates_presence_of :experience, :emotion
end
