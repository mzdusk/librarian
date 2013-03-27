class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :title, :null => false
      t.text :detail
      t.date :date
      t.string :place

      t.integer :lock_version, :null => false, :default => 0
      t.timestamps
    end
  end
end
