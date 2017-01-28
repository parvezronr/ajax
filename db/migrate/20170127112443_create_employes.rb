class CreateEmployes < ActiveRecord::Migration
  def change
    create_table :employes do |t|
      t.string :name
      t.string :email
      t.string :age

      t.timestamps null: false
    end
  end
end
