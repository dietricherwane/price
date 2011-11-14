class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :civilite
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :sex
      #t.string :avatar_file_name
      #t.string :avatar_content_type
      #t.integer :avatar_file_size
      #t.datetime :avatar_updated_at
      t.date :birthdate
      t.string :birthplace
      t.string :current_nationality
      t.string :region_of_residence
      t.string :city_of_residence
      t.integer :mobile_number
      t.integer :fix_number
      t.string :postal_address
      t.string :marital_status
      t.integer :number_of_children
      t.string :diploma
      t.string :school
      t.date :graduation_year
      t.string :domain
      t.string :job
      t.string :job_description
      t.string :employer
      t.string :contract_type
      #t.string :cv_file_name
      #t.string :cv_content_type
      #t.integer :cv_file_size
      #t.datetime :cv_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
