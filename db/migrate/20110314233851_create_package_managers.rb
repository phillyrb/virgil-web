class CreatePackageManagers < ActiveRecord::Migration
  def self.up
    create_table :package_managers do |t|
      t.string :name, null: false

      t.timestamps
    end
  end

  def self.down
    drop_table :package_managers
  end
end
