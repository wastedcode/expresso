class CreateExperiences < ActiveRecord::Migration
  def self.up
    create_table :experiences, :id => false do |t|
      t.string :id, :null => false
      t.string :user_id, :null => false
      t.text :comment
      t.datetime :tagged_time
      t.timestamps
    end

    add_index :experiences, :user_id
  end

  def self.down
    drop_table :experiences
  end
end

