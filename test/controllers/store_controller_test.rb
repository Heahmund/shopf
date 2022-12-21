require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    Product.last
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 4

    assert_select 'h2', 'Programming_Ruby_1.9'
 
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
