require 'uuidtools'

module GuidPrimaryKey
  def self.included(model)
    model.class_eval do
      validates_presence_of :id
      validates_uniqueness_of :id
      before_validation_on_create :set_guid_id
    end
  end

  private

  def set_guid_id
    self.id = UUIDTools::UUID.random_create.to_s
    true
  end
end
