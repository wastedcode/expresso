class CreateExperiencedActivities < ActiveRecord::Migration
  def self.up
    create_table :experienced_activities, :id => false do |t|
      t.string :id, :null => false
      t.string :experience_id, :null => false
      t.string :activity_id, :null => false
    end

    add_index :experienced_activities, :experience_id
  end

  def self.down
    drop_table :experienced_activities
  end
end

