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

  describe 'Player 1 attacks player and gets a confirmation', type: :feature do
    it 'allows Player 1 to attack & provides a confirmation of attack' do
      sign_in_and_play
      click_on(class: 'player1_attack_button')
      expect(page).to have_content('Igor has attacked Rogi')
    end

  end
end
