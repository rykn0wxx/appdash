class CreateRegions < ActiveRecord::Migration[5.2]
  def self.up
    create_table :regions do |t|
      t.string :name,       null: false, default: ""
      t.string :code,       null: false, default: ""
      t.boolean :active,    default: true

      t.timestamps
    end
    add_index :regions, :name,  unique: true
    add_index :regions, :code,  unique: true
  end
  def self.down
    drop_table :regions
  end
end
