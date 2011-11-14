class CreateMaritals < ActiveRecord::Migration
  def self.up
    create_table :maritals do |t|
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :maritals
  end
end
