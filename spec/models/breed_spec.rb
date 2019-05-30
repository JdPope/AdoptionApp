require 'rails_helper'

describe 'Breed' do
  before do
    @lab = Breed.create(name: "Labrador Retriever")
  end

  it 'has a name' do
    expect(Breed.find_by(name: "Labrador Retriever")).to eq(@lab)
  end

end

describe 'Breed' do
  before do
    @breed = Breed.create(name: "lab")
  end

  it 'removes the instance' do
    expect{@breed.destroy}.to change {Breed.count}
  end

end
