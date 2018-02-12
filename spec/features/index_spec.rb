require 'spec_helper'

describe 'Index Page', type: :feature do
  before do
    visit '/'
  end

  it 'shows the front matter title as the .header__title' do
    within '.header__title' do
      expect(page).to have_content 'Algiers Investigations'
    end
  end

  it 'shows the front matter subtitle as the .header__subheader' do
    within '.header__subheader' do
      expect(page).to have_content 'Louisiana Private Investigation Services'
    end
  end

  describe 'Navbars' do
    it 'has a mobile navbar' do
      expect(page).to have_css '.navbar--mobile'
    end

    it 'has a desktop navbar' do
      expect(page).to have_css '.navbar--desktop'
    end

  end

end

# it 'has the correct title header' do
#   expect(page).to have_selector 'h1'
#   within 'h1' do
#     expect(page).to have_content 'Algiers Investigations'
#   end
# end
