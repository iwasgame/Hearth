class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :subtype
      t.integer :level
      t.integer :money
      t.integer :power
      t.integer :life
      t.string :text

      t.timestamps
    end
  end
end
