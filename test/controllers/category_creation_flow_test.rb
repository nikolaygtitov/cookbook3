# require 'test_helper'
require "application_system_test_case"

class CategoryCreationFlowTest < ApplicationSystemTestCase
  test 'category creation flow should happen with user input' do
    visit '/categories/new'

    fill_in 'Name', with: 'Some category name'

    click_button 'Create Category'

    assert page.has_content?('Category was successfully created.')
    assert page.has_content?('Some category name')
  end
end
