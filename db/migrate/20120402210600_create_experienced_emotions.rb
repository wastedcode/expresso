class CreateExperiencedEmotions < ActiveRecord::Migration
  def self.up
    create_table :experienced_emotions, :id => false do |t|
      t.string :id, :null => false
      t.string :experience_id, :null => false
      t.string :emotion_id, :null => false
    end

    add_index :experienced_emotions, :experience_id
  end

  def self.down
    drop_table :experienced_emotions
  end
end
