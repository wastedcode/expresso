class CreateEmotions < ActiveRecord::Migration
  def self.up
    create_table :emotions, :id => false do |t|
      t.column :id, 'char(36)', :null => false
      t.string :name, :null => false
      t.timestamps
    end

    add_index :emotions, :name, :unique => true
  end

  def self.down
    drop_table :emotions
  end
end
