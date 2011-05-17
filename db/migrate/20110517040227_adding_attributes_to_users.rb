class AddingAttributesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :location, :string
    add_column :users, :hobbies, :string
    add_column :users, :influences, :string
    add_column :users, :inspiration, :string
  end

  def self.down
    remove_column :users, :location, :string
    remove_column :users, :hobbies, :string
    remove_column :users, :influences, :string
    remove_column :users, :inspiration, :string
  end
end
