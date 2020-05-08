class Users < ActiveRecord::Migration[6.0]
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.timestamps
    end
    
  end
end
