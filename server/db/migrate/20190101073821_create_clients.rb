class CreateClients < ActiveRecord::Migration[5.2]
  def self.up
    create_table :clients do |t|
      t.string :name,         null: false, default: ""
      t.references :project,  foreign_key: true
      t.references :region,   foreign_key: true
      t.boolean :active,      default: true

      t.timestamps
    end
    add_index :clients, :name,  unique: true
  end
  def self.down
    drop_table :clients
  end
end
