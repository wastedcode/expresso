class CreateVenuesAndExperienceLocations < ActiveRecord::Migration
  def self.up
    create_table :venues, :id => false do |t|
      t.string :id, :null => false
      t.string :partner_venue_id
      t.integer :venue_type
      t.string :name, :null => false
      t.text :categories
      t.text :location
    end

    add_index :venues, :partner_venue_id

    create_table :experience_locations, :id => false do |t|
      t.string :id, :null => false
      t.string :experience_id, :null => false
      t.string :venue_id, :null => false
    end

    add_index :experience_locations, :experience_id
  end

  def self.down
    drop_table :venues
    drop_table :experience_locations
  end
end
