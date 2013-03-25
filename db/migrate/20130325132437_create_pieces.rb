class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name, :null => false
      t.string :composer
      t.text :content

      t.integer :lock_version, :null => false, :default => 0
      t.timestamps
    end
  end
end
