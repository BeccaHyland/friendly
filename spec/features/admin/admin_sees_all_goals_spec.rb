require 'rails_helper'

describe 'user visits goals index page' do
  context 'as admin' do
    it 'allows admin to see all goals' do
      admin = User.create(username: "jean", password: "phoenix", role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_goals_path

      expect(page).to have_content("Admin Goals")
    end
  end

  context 'as default user' do
    it 'does not allow user to see admin goals index' do
      user = User.create(username: "logan", password: "wolverine", role: 0)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit admin_goals_path

      expect(page).to_not have_content("Admin Goals")
      expect(page).to have_content("The page you were looking for doesn't exist")
    end
  end
end
