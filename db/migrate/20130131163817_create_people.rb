class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :person_type
      t.string :first_name
      t.string :last_name
      t.string :phone_home
      t.string :phone_cell
      t.string :email
      t.string :gender
      t.references :user

      t.timestamps
    end
  end
end
