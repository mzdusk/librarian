class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name
      t.binary :data
      t.string :content_type
      t.integer :size

      t.integer :piece_id

      t.integer :lock_version, :null => false, :default => 0
      t.timestamps
    end

    add_index :scores, :piece_id
  end
end
