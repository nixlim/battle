require_relative '../../app'

describe Battle, type: :feature do
  it 'Says a thing' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
