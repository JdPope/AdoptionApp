require 'rails_helper'

describe 'Dog' do
  before do
    @dog = Dog.create(name: "Buckley")
  end

  it 'has a name' do
    expect(Dog.where(name: "Buckley").first).to eq(@dog)
  end

end
