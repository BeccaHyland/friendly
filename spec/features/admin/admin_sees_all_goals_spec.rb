require 'rails_helper'

describe 'user visits goals index page' do
  context 'as admin' do
    it 'allows admin to see all goals' do
      admin = User.create(username: "Jean Grey", password: "Phoenix", role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_goals_path

      expect(page).to have_content("Admin Goals")
    end
  end
end
