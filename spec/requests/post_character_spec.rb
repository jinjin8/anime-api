require 'rails_helper'

describe "post a characters route", :type => :request do
  before do
    Cartoon.destroy_all
    cartoon = FactoryGirl.create(:cartoon)
    post "/cartoons/#{cartoon.id}/characters", params: { :name => 'Lisa Simpson', :powers => '{Saxaphone}' }
  end

  it 'returns character' do
    expect(JSON.parse(response.body)['name']).to eq('Lisa Simpson')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
