require 'player'



describe Player do
  let(:name) { 'John' }
  subject {described_class.new(name)}
  it 'returns its name' do
    expect(subject.name).to eq 'John'
  end
end