class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      #t.string :username,         :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,            :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :credentials, :default => nil # => password column
      t.string :salt,             :default => nil

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
