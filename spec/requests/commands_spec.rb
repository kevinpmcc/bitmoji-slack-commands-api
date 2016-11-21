require 'factory_girl'

describe 'Movies API' do
  describe 'GET /commands' do
    it 'returns all the commands' do
      FactoryGirl.create :command, name: 'batman'
      FactoryGirl.create :command, name: 'beyonce'

      get '/commands', {}, { 'Accept' => 'application/json' }

     expect(response.status).to eq 200

    body = JSON.parse(response.body)
    command_names = body.map { |command| command['name'] }

    expect(command_names).to match_array(['batman','beyonce'])
    end
  end
end
