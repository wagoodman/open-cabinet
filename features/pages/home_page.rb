class HomePage
  include Capybara::DSL, Rails.application.routes.url_helpers

  def visit_home_page
    visit(root_path)
  end

  def type_search_characters(characters)
    find('#search_input').trigger(:focus)
    fill_in('search_input', with: characters)
  end

  def autocomplete_text
    # autocomplete is invisible but present
    find('.tt-highlight', visible: false).text
  end
end