# we made this in the terminal using:
# rake db:create_migration NAME=create_users_table
# next, run the migration
# rake db:migrate

class CreateUsersTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :users do |t|
  		t.string :name
  		t.string :email
  		t.string :pic
  		t.datetime :birthday
  	end
  end
end
