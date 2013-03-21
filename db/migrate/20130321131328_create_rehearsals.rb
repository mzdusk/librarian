class CreateRehearsals < ActiveRecord::Migration
  def change
    create_table :rehearsals do |t|
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
