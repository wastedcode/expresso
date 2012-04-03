class Actor < ActiveRecord::Base
  include GuidPrimaryKey

  belongs_to :experience
  belongs_to :user

  validates_presence_of :user, :experience
end
