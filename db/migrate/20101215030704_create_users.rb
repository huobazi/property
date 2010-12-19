class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email, :null => false
      t.string :passwd, :null => false
      t.string :name, :null => false
      t.string :location
      t.string :bio
      t.string :avatar_file_name
      t.boolean :verified, :null => false, :default => false
      t.integer :state, :null => false, :default => 1
      t.datetime :last_logined_at

      t.timestamps
    end

    add_index :users, :email
  end

  def self.down
    drop_table :users
  end
end
