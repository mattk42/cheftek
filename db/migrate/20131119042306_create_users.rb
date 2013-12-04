class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
	    t.string :phone
      t.string :email
      t.string :password_digest
      t.datetime :last_login_date
      t.datetime :registration_date
	    t.integer :user_type_id
      t.foreign_key :user_type
      t.boolean :is_active
      t.integer :company_id
      t.foreign_key :company
      t.timestamps
    end

    create_table :companies do |t|
      t.string :name
      t.integer :primary_user_id
      t.foreign_key :user
      t.string :address
      t.boolean :is_current
    end

    create_table :user_types do |t|
      t.string :type
    end
  end

end
