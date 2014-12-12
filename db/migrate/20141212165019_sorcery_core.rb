class SorceryCore < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name,             :null => false
      t.string :surname,          :null => false
      t.string :email,            :null => false
      t.string :department,       :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false
      t.boolean :isadmin,         :null => false
      t.timestamps
    end

    add_index :members, :email, unique: true
  end
end