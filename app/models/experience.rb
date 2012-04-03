class Experience < ActiveRecord::Base
  include GuidPrimaryKey

  belongs_to :user
  has_many :experienced_emotions
  has_many :experienced_activities
  has_many :actors

  validates_presence_of :user
end
