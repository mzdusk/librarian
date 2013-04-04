class CreateRehearsals < ActiveRecord::Migration
  def change
    create_table :rehearsals do |t|
      t.text :content
      t.datetime :date
      t.string :place

      t.timestamps
    end
  end
end
