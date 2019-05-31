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

  describe 'Breed' do
    before do
      @lab = Breed.create(size: "Medium")
    end

    it 'has a size' do
      expect(Breed.find_by(size: "Medium")).to eq(@lab)
    end

  end
  describe 'Breed' do
    before do
      @lab = Breed.create(temperament: "Friendly")
    end

    it 'has a temperament' do
      expect(Breed.find_by(temperament: "Friendly")).to eq(@lab)
    end

  end

end
