class Users < ActiveRecord::Migration[6.0]
  def self.up
    #create_table :users do |t|
     # t.string :name
      #t.string :email
      #t.string :password
      #t.timestamps
    #end
    User.create :name =>"kalyani", :email=>"cheedellakalyani007@gmail.com", :password=>"kalyani"
    User.create :name =>"gupta", :email=>"cheedellagupta.kumari@gmail.com", :password=>"gupta9000"
    User.create :name =>"shanmukhasai1", :email=>"cheedellashanmukha@gmail.com", :password=>"shanmukha9000"
  end
end
