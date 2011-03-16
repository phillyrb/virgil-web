class Package < ActiveRecord::Base

  belongs_to :canonical_package
  belongs_to :package_manager
  
end
