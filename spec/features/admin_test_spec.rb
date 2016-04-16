
require 'test_helper'

class AdminToolsTest < ActionDispatch::IntegrationTest
  test "logged in admin can see all tools" do
    create_user
    create_user_tools

    create_and_log_in_admin

    visit admin_tools_path

    assert page.has_content?("Admin Tools")
    Tool.all.each do |tool|
      assert page.has_content?("#{tool.name}")
    end
  end
end
