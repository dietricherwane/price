class CreateCivilites < ActiveRecord::Migration
  def self.up
    create_table :civilites do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :civilites
  end
end
