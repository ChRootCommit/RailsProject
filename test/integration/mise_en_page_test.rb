require 'test_helper'

class MiseEnPageTest < ActionDispatch::IntegrationTest
 test "mise_en_page link" do
    get root_path
    assert_template "statique/accueil"
    assert_select "a[href=?]", service_path 
    assert_select "a[href=?]", contact_path 
    assert_select "a[href=?]", team_path 
    assert_select "a[href=?]", root_path, count: 2 
 end


end
