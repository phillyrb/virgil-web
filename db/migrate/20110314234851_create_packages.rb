class CreatePackages < ActiveRecord::Migration
  def self.up
    create_table :packages do |t|
      t.string :name, null: false
      t.integer :canonical_package_id, null: false
      t.integer :package_manager_id, null: false

      t.timestamps
    end
  end

  def self.down
    drop_table :packages
  end
end
