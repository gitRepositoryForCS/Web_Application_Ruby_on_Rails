class CreateTuesdays < ActiveRecord::Migration
  def change
    create_table :tuesdays do |t|
      t.string :time
      t.text :event

      t.timestamps
    end
  end
end
