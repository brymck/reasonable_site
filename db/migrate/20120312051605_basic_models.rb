class BasicModels < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
    end

    create_table :trolls do |t|
      t.string     :text
      t.boolean    :regex
      t.references :category
    end
    add_index :trolls, :category_id

    create_table :users do |t|
      t.string  :identifier
      t.integer :credibility

      t.timestamps
    end
    add_index :users, :identifier, :unique => true

    create_table :reports do |t|
      t.references :user
      t.references :troll
      t.boolean    :blacklist, :default => true
      t.boolean    :whitelist, :default => false
      t.boolean    :autolist,  :default => false
      t.boolean    :auto,      :default => true

      t.timestamps
    end
    add_index :reports, :user_id
    add_index :reports, :troll_id
  end
end
