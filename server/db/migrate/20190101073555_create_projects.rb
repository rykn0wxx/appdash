class CreateProjects < ActiveRecord::Migration[5.2]
  def self.up
    create_table :projects do |t|
      t.string :name,       null: false, default: ""
      t.string :code,       null: false, default: ""
      t.boolean :active,    default: true

      t.timestamps
    end
    add_index :projects, :name,  unique: true
    add_index :projects, :code,  unique: true
  end
  def self.down
    drop_table :projects
  end
end
