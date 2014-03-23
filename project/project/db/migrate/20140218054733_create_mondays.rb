class CreateMondays < ActiveRecord::Migration
  def change
    create_table :mondays do |t|
      t.string :time
      t.text :event

      t.timestamps
    end
  end
end
