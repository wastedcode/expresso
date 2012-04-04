class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities, :id => false do |t|
      t.column :id, 'char(36)', :null => false
      t.string :name, :null => false
      t.timestamps
    end

    add_index :activities, :name, :unique => true
  end

  def self.down
    drop_table :activities
  end
end

