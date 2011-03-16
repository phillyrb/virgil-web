class CanonicalPackagesController < ApplicationController

  def show
    pacman = PackageManager.where(name: params[:package_manager_id]).first
    canon = CanonicalPackage.where(name: params[:package_name]).first
    packages = Package.where(package_manager_id: pacman.id, canonical_package_id: canon.id).all

    render json: packages.collect(&:name)
  end

end
