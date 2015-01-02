class CreateRegusers < ActiveRecord::Migration
  def change
    create_table :regusers do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :phno
      t.string :addrs
      t.string :gender
      

      t.timestamps
    end
  end
end
