require 'rails_helper'

describe "get all parks route", :type => :request do
  Park.destroy_all
  park = Park.create!({name: "Nisene Marks", location: "California", kind: "National Park", description: "Excellent park"})
  park.save
  park2 = Park.create!({name: "Yellowstone", location: "California", kind: "National Park", description: "Excellent park"})
  park2.save

  before { get '/parks'}

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

require 'rails_helper'

describe "post a park route", :type => :request do

  before do
    post '/parks', params: { name: "Chickens", location: "California", kind: "National Park", description: "Excellent park" }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['name']).to eq('Chickens')
  end

  it 'returns the park location' do
    expect(JSON.parse(response.body)['location']).to eq('California')
  end

  it 'returns the park kind' do
    expect(JSON.parse(response.body)['kind']).to eq('National Park')
  end

  it 'returns the park description' do
    expect(JSON.parse(response.body)['description']).to eq('Excellent park')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

describe "get a random park", :type => :request do

  before do
    get '/random'
  end

  it 'returns a single random park' do
    expect(JSON.parse(response.body).size).to eq(6)
  end
end
