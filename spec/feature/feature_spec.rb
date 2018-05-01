require './app'

describe Battle, type: :feature do

  describe 'player name entry', type: :feature do
    it 'expects player to enter name on form and have it displayed back to them' do
      sign_in_and_play
      expect(page).to have_content('Igor vs Rogi')
    end
  end

  describe 'Player 1 sees Player 2\'s hit points', type: :feature do
    it 'shows Player 2\'s HP' do
      sign_in_and_play
      expect(page).to have_content("Rogi's HP: 100")
    end
  end
end
