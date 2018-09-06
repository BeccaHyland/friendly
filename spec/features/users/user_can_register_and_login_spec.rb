require 'rails_helper'

describe 'registration and login' do
  describe 'registration' do
    it 'allows a visitor to register' do
      username = 'username'

      visit root_path

      click_on 'Sign up to be a new Friendly user'

      expect(current_path).to eq(new_user_path)

      fill_in :user_username, with: username
      fill_in :user_password, with: 'password'

      click_on 'Create User'

      expect(page).to have_content("Welcome to Friendly, #{username}")
    end

    it 'blocks registration when username is not unique' do
      username = 'username'
      User.create(username: username, password: 'whatever')

      visit root_path

      click_on 'Sign up to be a new Friendly user'

      expect(current_path).to eq(new_user_path)

      fill_in :user_username, with: :username
      fill_in :user_password, with: :password

      click_on 'Create User'

      expect(page).to_not have_content("Welcome to Friendly, #{username}")
      expect(current_path).to eq(users_path)
    end
  end

  describe 'login' do
    it 'allows users to login successfully' do
      user = User.create(username: "Carmen", password: "friendlyyy")
      visit root_path

      click_on 'Login'

      expect(current_path).to eq(login_path)

      fill_in :username, with: user.username
      fill_in :password, with: user.password

      click_on 'Log In'

      expect(current_path).to eq(user_path(user))
      expect(page).to have_content("Welcome to Friendly, #{user.username}")
    end

    it 'stops users from login unsuccessfully' do
      user = User.create(username: "Carmen", password: "friendlyyy")
      visit root_path

      click_on 'Login'

      expect(current_path).to eq(login_path)

      fill_in :username, with: user.username
      fill_in :password, with: 'bad password'

      click_on 'Log In'

      expect(current_path).to eq(login_path)
      expect(page).to_not have_content("Welcome to Friendly, #{user.username}")
    end
  end
end
