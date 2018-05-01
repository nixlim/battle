require_relative '../../app'

describe Battle, type: :feature do

  describe 'player name entry', type: :feature do
    it 'expects player to enter name on form and have it displayed back to them' do
      visit '/'
      fill_in 'Player_1_Name', with: 'Igor'
      fill_in 'Player_2_Name', with: 'Rogi'
      click_button 'Submit'
      expect(page).to have_content('Igor', 'Rogi')
    end

  end
end
