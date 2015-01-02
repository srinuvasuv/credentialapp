class AddGenderToReguser < ActiveRecord::Migration
  def change
    add_column :regusers, :gender, :string
  end
end
