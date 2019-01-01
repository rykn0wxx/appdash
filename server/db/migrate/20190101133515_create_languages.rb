class CreateLanguages < ActiveRecord::Migration[5.2]
  def self.up
    create_table :languages do |t|
      t.string :name,       null: false, default: ""
      t.boolean :active,    default: true

      t.timestamps
    end
    add_index :languages, :name,  unique: true
  end
  def self.down
    drop_table :languages
  end
end
