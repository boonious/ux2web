class CreateShares < ActiveRecord::Migration
  def self.up
    create_table :shares, :force => true do |t|
      t.column :user_id,            :integer
      t.column :shareable_type,     :string, :limit => 30
      t.column :shareable_id,       :integer
      t.column :shared_to_type,     :string, :limit => 30
      t.column :shared_to_id,       :integer
      t.column :state,              :string, :limit => 30
      t.column :created_at,         :datetime
      t.column :updated_at,         :datetime
    end
    
    create_table :shared_objects do |t|
      t.string :title, :default => "" 
      t.text :content, :default => "" 
      t.string         :type
      t.references     :user
      t.boolean        :approved, :default => false
      t.boolean        :spam,     :default => false
      t.string         :state
      t.datetime       :published_at
      t.string         :name
      t.string         :email
      t.string         :url      
      t.timestamps
    end
    
  end

  def self.down
    drop_table :shares
    drop_table :shared_objects
  end
end
