class CreateActors < ActiveRecord::Migration
  def self.up
    create_table :actors, :id => false do |t|
      t.string :id, :null => false
      t.string :experience_id, :null => false
      t.string :user_id, :null => false
    end

    add_index :actors, :experience_id
  end

  def self.down
    drop_table :actors
  end
end
