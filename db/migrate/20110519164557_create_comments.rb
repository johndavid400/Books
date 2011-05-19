class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :text
      t.string :author
      t.belongs_to :book
    end
  end

  def self.down
    drop_table :comments
  end
end
