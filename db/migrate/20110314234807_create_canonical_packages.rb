class CreateCanonicalPackages < ActiveRecord::Migration
  def self.up
    create_table :canonical_packages do |t|
      t.string :name, null: false

      t.timestamps
    end
  end

  def self.down
    drop_table :canonical_packages
  end
end
