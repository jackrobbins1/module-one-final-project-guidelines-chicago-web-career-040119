class CreateUsers < ActiveRecord::Migration[5.2]
   def change
     create_table :users do |t|
       t.string :name, null: false, index: { unique: true }
       t.datetime :birthday
       t.string :sign
    end
  end
end
