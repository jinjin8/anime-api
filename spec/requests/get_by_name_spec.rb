require 'rails_helper'

describe "the get by name character route", :type => :request do

  it 'returns a character name' do
    cartoon = FactoryGirl.create(:cartoon_with_characters)
    character = cartoon.characters[0]
    get "/cartoons/#{cartoon.id}/characters/by_name?name=#{character.name}"
    expect(JSON.parse(response.body)[0]['name']).to eq(character.name)
  end
end
