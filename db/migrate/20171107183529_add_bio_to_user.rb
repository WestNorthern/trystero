class AddBioToUser < ActiveRecord::Migration[5.1]
  def self.up
  	add_column :users, :bio, :string
  end
end
