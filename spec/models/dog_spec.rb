require 'rails_helper'

describe 'Dog' do
  before do
    @dog = Dog.create(name: "Buckley")
  end

  it 'has a name' do
    expect(Dog.where(name: "Buckley").first).to eq(@dog)
  end

end

describe 'Dog' do
  before do
    @dog = Dog.create(name: "Skippy")
  end

  it 'removes the instance' do
    expect{@dog.destroy}.to change {Dog.count}
  end

end
