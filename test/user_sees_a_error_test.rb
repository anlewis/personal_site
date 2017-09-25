require './test/test_helper'

class ErrorPageTest < CapybaraTestCase
  def test_user_can_see_error
    visit '/does_not_exist'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
