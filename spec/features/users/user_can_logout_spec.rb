require 'rails_helper'

describe "user logs out" do
  describe 'logout' do
    it 'allows users to logout successfully using nav' do
      user = User.create(username: "Hollie", password: "california")
      visit login_path
      expect(current_path).to eq(login_path)

      fill_in :username, with: user.username
      fill_in :password, with: user.password

      click_on 'Log In'
      expect(page).to_not have_content('I already have a Friendly account')

      click_on 'Logout'

      expect(current_path).to eq(root_path)
    end
  end
end
