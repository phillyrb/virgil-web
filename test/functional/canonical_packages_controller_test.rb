require 'test_helper'

class CanonicalPackagesControllerTest < ActionController::TestCase

  test 'should route to #show' do
    assert_routing '/pacman/packagename', controller: 'canonical_packages', action: 'show', package_manager_id: 'pacman', package_name: 'package_name'
  end

  test "should return the package manager specific name" do
    pacman = Factory.create :package_manager
    canon = Factory.create :canonical_package, package_manager: pacman
    package = Factory.create :package, canonical_package: canon, package_manager: pacman

    get :show, package_name: canon.name

    assert_equal JSON::parse(response.body), [package.name]
  end

end
