require 'spec_helper'

describe 'Contact Page', type: :feature do
  before do
    visit '/contact.html'
  end

  it 'shows the front matter title as the .header__title' do
    within '.header__title' do
      expect(page).to have_content 'Algiers Investigations'
    end
  end

  it 'shows the front matter subtitle as the .header__subheader' do
    within '.header__subheader' do
      expect(page).to have_content 'Contact'
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
